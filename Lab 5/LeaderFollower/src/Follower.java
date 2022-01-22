/*
 * LeaderFollower is a lab project demonstrating a solution to the leader-follower
 * concurrency problem using Semaphores.
 * Copyright (C) 2021 Benjamin Tremblay
 *
 * This file is part of LeaderFollower.
 *
 * LeaderFollower is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * LeaderFollower is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with LeaderFollower.  If not, see <https://www.gnu.org/licenses/>.
 */

import java.util.concurrent.Semaphore;

/**
 * A class for creating Follower threads to run concurrently with Leader threads
 * @author Benjamin Tremblay
 * @version 01/21/2022
 */
public class Follower implements Runnable {
    private Thread t;
    private final int followerNum;
    private final Semaphore mySem;
    private final Semaphore mutex;
    private final FifoQueue queueHandler;
    private final Semaphore rendezvous;

    /**
     * Class constructor for building a Follower object
     * @param num Integer that is assigned to the Follower for id
     * @param mutex Semaphore acting as a lock shared between all threads
     * @param q FifoQueue that handles all the threads
     * @param rv Semaphore acting as a rendezvous shared between all threads
     */
    public Follower(int num, Semaphore mutex, FifoQueue q, Semaphore rv) {
        this.mySem = new Semaphore(0);
        this.followerNum = num;
        this.mutex = mutex;
        this.queueHandler = q;
        this.rendezvous = rv;
    }

    /**
     * Runs a process alongside a Leader thread if there is a Leader waiting
     */
    @Override
    public void run() {
        try {
            mutex.acquire();
            if(queueHandler.getLeaderCnt() > 0){
                queueHandler.removeLeader().release();
            }
            else{
                queueHandler.addFollower(mySem);
                mutex.release();
                mySem.acquire(); //turn this into acquire only for this follower
            }
            System.out.println("Follower "+followerNum+" is dancing..");
            Thread.sleep(1000);
            rendezvous.release();
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    /**
     * Starts the class object's thread
     */
    public void start() {
        if(t == null){
            t = new Thread(this);
            t.start();
        }
    }
}
