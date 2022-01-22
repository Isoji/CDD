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

import java.util.LinkedList;
import java.util.concurrent.Semaphore;

/**
 * A thread safe fifo queue class (first in, first out) for Leaders and Followers.
 * @author Benjamin Tremblay
 * @version 01/21/2022
 */
public class FifoQueue {
    private final LinkedList<Semaphore> leaders;
    private final LinkedList<Semaphore> followers;

    /**
     * Default class constructor
     */
    public FifoQueue(){
        this.leaders = new LinkedList<>();
        this.followers = new LinkedList<>();
    }

    /**
     * Adds a Semaphore that represents a Leader to the leaders list
     * @param obj a Semaphore object
     */
    public synchronized void addLeader(Semaphore obj){
        leaders.add(obj);
    }

    /**
     * Removes the first Semaphore from the leaders list
     * @return the Semaphore object that was removed from the list
     */
    public synchronized Semaphore removeLeader(){
        return leaders.removeFirst();
    }

    /**
     * Gets the amount of items in the leaders list
     * @return the size of leaders
     */
    public synchronized int getLeaderCnt(){
        return leaders.size();
    }

    /**
     * Adds a Semaphore that represents a Follower to the followers list
     * @param obj a Semaphore object
     */
    public synchronized void addFollower(Semaphore obj){
        followers.add(obj);
    }

    /**
     * Removes the first Semaphore from the followers list
     * @return the Semaphore object that was removed from the list
     */
    public synchronized Semaphore removeFollower(){
        return followers.removeFirst();
    }

    /**
     * Gets the amount of items in the followers list
     * @return the size of followers
     */
    public synchronized int getFollowerCnt(){
        return followers.size();
    }
}
