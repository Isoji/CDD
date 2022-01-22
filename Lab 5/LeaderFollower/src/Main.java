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
 * A testing class
 * @author Benjamin Tremblay
 * @version 01/21/2022
 */
public class Main {

    /**
     * Creates leader and follower objects to run concurrently
     * @param args Unused
     */
    public static void main(String[] args) {
        FifoQueue queueHandler = new FifoQueue();
        Semaphore mutex = new Semaphore(1);
        Semaphore mutex_main = new Semaphore(1);
        Semaphore rendezvous = new Semaphore(0);

        for (int i = 0; i < 5; ++i){
            try {
                mutex_main.acquire();
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            new Leader(i, mutex, queueHandler, rendezvous).start();
            mutex_main.release();
        }

        for(int i = 0; i < 5; ++i){
            try {
                mutex_main.acquire();
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            new Follower(i, mutex, queueHandler, rendezvous).start();
            mutex_main.release();
        }
    }
}