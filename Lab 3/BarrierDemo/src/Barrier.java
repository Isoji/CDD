/*
 * BarrierDemo is a lab project covering concurrency barriers using Semaphores.
 * Copyright (C) 2021 Benjamin Tremblay
 *
 * This file is part of BarrierDemo.
 *
 * BarrierDemo is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * BarrierDemo is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with BarrierDemo.  If not, see <https://www.gnu.org/licenses/>.
 */

import java.util.concurrent.Semaphore;

/**
 * A concurrency barrier using semaphores. Conceptually, a barrier blocks threads until a specified number of threads
 * reach the barrier. Each arrive() increments the number of threads that have reached
 * the barrier, blocking the threads until the total number of threads set on the barrier is reached.
 * @author Benjamin Tremblay
 * @version 10/24/2021
 */
public class Barrier{
    private final int thread_total;
    private int thread_cnt;
    private final Semaphore mutex;
    private final Semaphore turnstile;

    /**
     * Creates a Barrier with the given maximum number of threads to be blocked.
     * @param thread_total the integer to be assigned to thread_total
     */
    public Barrier(int thread_total){
        this.thread_total = thread_total;
        this.thread_cnt = 0;
        this.mutex = new Semaphore(1);
        this.turnstile = new Semaphore(0);
    }

    /**
     * Increments the number of threads that have arrived at the barrier by 1, blocking until
     * the thread total number is reached.
     * @throws InterruptedException if thread is interrupted.
     */
    public void arrive() throws InterruptedException {
        mutex.acquire();
            thread_cnt++;
            System.out.println("Thread arrived");
        mutex.release();

        if (thread_cnt == thread_total){
            System.out.println("Max number of barrier threads arrived");
            thread_cnt = 0;
            turnstile.release(thread_total - 1);
        }
        else{
            turnstile.acquire();
        }
    }
}
