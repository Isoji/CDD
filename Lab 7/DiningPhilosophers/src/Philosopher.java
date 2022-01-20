/*
 * DiningPhilosophers is a lab project demonstrating the concurrency dining philosopher problem using Semaphores.
 * Copyright (C) 2021 Benjamin Tremblay
 *
 * This file is part of DiningPhilosophers.
 *
 * DiningPhilosophers is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * DiningPhilosophers is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with DiningPhilosophers.  If not, see <https://www.gnu.org/licenses/>.
 */
import java.util.concurrent.Semaphore;

/**
 * A philosopher thread that can only run if both its left and right forks are acquired. There are n shared
 * forks for n philosophers. Each philosopher will go through a footman Semaphore of permits = total philosophers - 1
 * in order to prevent deadlocking while retaining an efficient flow to the processes.
 * @author Benjamin Tremblay
 * @version 11/15/2021
 */
public class Philosopher implements Runnable{
    private Thread t;
    private final Semaphore[] forks; // 1 permit each; shared forks between all philosophers
    private final Semaphore mutex; // 1 permit; used for preventing race conditions
    private final Semaphore footman; // NB_OF_PHILOSOPHERS-1 permits; prevents deadlocking amongst multiple philosophers
    private final int threadNum; // index of the thread
    private final int leftFork; // index of the left-hand fork
    private final int rightFork; // index of the right-hand fork
    private boolean ate;

    /**
     * Creates a Philosopher with the specified Array of forks, Semaphore objects, and integer.
     * @param forks the array containing shared Semaphore objects assigned to forks
     * @param mutex the shared Semaphore object assigned to mutex
     * @param footman the shared Semaphore object assigned to footman
     * @param threadNum the integer assigned to threadNum
     */
    public Philosopher(Semaphore[] forks, Semaphore mutex, Semaphore footman, int threadNum){
        this.forks = forks;
        this.mutex = mutex;
        this.footman = footman;
        this.threadNum = threadNum;
        this.leftFork = threadNum;
        this.rightFork = (threadNum + 1) % forks.length;
        this.ate = false;
    }

    /**
     * Prints a message concurrently. This method is implemented in a way to solve the dining philosophers problem.
     */
    @Override
    public void run() {
        while(!ate) {
            try {
                footman.acquire();
                mutex.acquire();
                if (forksAvail()) {
                    getForks();
                    mutex.release();
                    System.out.println("Philosopher " + threadNum + " is eating..");
                    Thread.sleep((long) (Math.random() * 3000)); // simulation of a process runtime
                    ate = true;
                    putForks();
                }
                else{
                    mutex.release();
                }
                footman.release();
            } catch (InterruptedException e) {
                e.getStackTrace();
            }
        }
    }

    /**
     * Checks if both the left and right forks are available.
     * @return the state of availability of both forks
     */
    public boolean forksAvail(){
        return forks[leftFork].availablePermits() > 0 && forks[rightFork].availablePermits() > 0;
    }

    /**
     * Acquires both the left and right forks.
     * @throws InterruptedException if thread is interrupted
     */
    public void getForks() throws InterruptedException{
        forks[leftFork].acquire();
        forks[rightFork].acquire();
        System.out.println("Philosopher "+ threadNum +" has acquired forks "+leftFork+" and "+rightFork);
    }

    /**
     * Releases both the left and right forks.
     */
    public void putForks(){
        System.out.println("Philosopher "+ threadNum +" has put back forks "+leftFork+" and "+rightFork);
        forks[leftFork].release();
        forks[rightFork].release();
    }

    /**
     * Starts the object's thread.
     */
    public void start(){
        if (t == null) {
            t = new Thread (this);
            t.start ();
        }
    }
}