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

/**
 * A task consuming a thread. Each task will call arrive() on a shared Barrier object, looping
 * a number of times.
 * @author Benjamin Tremblay
 * @version 2021-10-24
 */
public class Task implements Runnable{
    private final int TASK_RUNTIMES = 3;
    private Thread t;
    private Barrier barrier;
    String threadName;

    /**
     * Creates a Task with the given Barrier object and name.
     * @param b the Barrier assigned to barrier
     * @param name the String assigned to threadName
     */
    public Task(Barrier b, String name){
        this.barrier = b;
        this.threadName = name;
    }

    /**
     * Calls barrier.arrive() in a loop.
     */
    @Override
    public void run() {
        try {
            for (int i = 0; i < TASK_RUNTIMES; i++) {
                barrier.arrive();
                System.out.println(this.threadName + " is continuing");
            }
        } catch(InterruptedException e){
            e.printStackTrace();
        }
    }

    /**
     * Starts the thread of the task.
     */
    public void start () {
        System.out.println("Starting " +  threadName );
        if (t == null) {
            t = new Thread (this, threadName);
            t.start ();
        }
    }
}
