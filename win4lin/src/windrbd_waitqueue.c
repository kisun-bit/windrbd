#include "drbd_windows.h"
#include "windrbd_threads.h"

/* TODO: timeout is in milliseconds here, how is this done in Linux? */

static void ll_wait(wait_queue_head_t *q, ULONG_PTR timeout, int interruptible) 
{
	LARGE_INTEGER wait_time;
	LARGE_INTEGER *wait_time_p;
	NTSTATUS status;
	int num_wait_objects = 0;
	PVOID wait_objects[2] = {0};
	struct task_struct *thread = current;

	if(timeout != MAX_SCHEDULE_TIMEOUT) {
		wait_time.QuadPart = timeout * (-1 * 1000 * 10);
		wait_time_p = &wait_time;
	}
	else
		wait_time_p = NULL;

	if (q) {
		wait_objects[num_wait_objects] = (void *) &q->wqh_event;
		num_wait_objects++;
	}
	if (thread->has_sig_event && interruptible == TASK_INTERRUPTIBLE) {
		wait_objects[num_wait_objects] = (PVOID) &thread->sig_event;
		num_wait_objects++;
	}

	status = KeWaitForMultipleObjects(num_wait_objects, &wait_objects[0], WaitAny, Executive, KernelMode, FALSE, wait_time_p, NULL);
}

void new_schedule(void)
{
	ll_wait(current->wait_queue, MAX_SCHEDULE_TIMEOUT, TASK_INTERRUPTIBLE);
}

	/* TODO: no locks? Assumes that current is always (1) valid and
	 * (2) unique.
	 */

void prepare_to_wait(struct wait_queue_head *w, void *unused, int interruptible)
{
	struct task_struct *thread = current;

	thread->interruptible = interruptible;
	thread->wait_queue = w;
}

void finish_wait(struct wait_queue_head *w, void *unused)
{
	struct task_struct *thread = current;

	thread->wait_queue = NULL;
}
