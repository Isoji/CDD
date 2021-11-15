/*
 * ProducerConsumerDemo is a lab project covering producers and consumers using Semaphores.
 * Copyright (C) 2021 Benjamin Tremblay
 *
 * This file is part of ProducerConsumerDemo.
 *
 * ProducerConsumerDemo is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * ProducerConsumerDemo is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with ProducerConsumerDemo.  If not, see <https://www.gnu.org/licenses/>.
 */
import java.util.LinkedList;
import java.util.concurrent.Semaphore;

/**
 * A consumer thread that processes events created by a Producer object.
 * @author Benjamin Tremblay
 * @version 11/08/2021
 */
public class Consumer implements Runnable{
    private Thread t;
    private LinkedList events; // shared LinkedList that contains the produced events
    private Semaphore filledCount; // starts with 0 permits; tracks the amount of events produced
    private Semaphore bufferSlots; // starts with BUFFER_SIZE permits; tracks the buffer space available
    private Semaphore mutex; // starts with 1 permit

    /**
     * Creates a Consumer with the specified LinkedList and Semaphore objects that are to be shared with a Producer.
     * @param events the LinkedList object assigned to numbers
     * @param filledCount the Semaphore object assigned to filledCount
     * @param bufferSlots the Semaphore object assigned to bufferSlots
     * @param mutex the Semaphore object assigned to mutex
     */
    public Consumer(LinkedList events, Semaphore filledCount, Semaphore bufferSlots, Semaphore mutex){
        this.events = events;
        this.filledCount = filledCount;
        this.bufferSlots = bufferSlots;
        this.mutex = mutex;
    }

    /**
     * Prints and removes the head item of the given LinkedList
     * @param events the events LinkedList
     */
    public void consumeEvent(LinkedList events){
        System.out.println(events.remove());
    }

    /**
     * Consumes an event from the shared LinkedList and increments the bufferSlots permits.
     */
    @Override
    public void run() {
        try {
            for (int i = 0; i < 20; i++) {
                filledCount.acquire();
                mutex.acquire();
                    consumeEvent(events);
                    bufferSlots.release();
                mutex.release();
            }
        }catch(InterruptedException e){
            e.getStackTrace();
        }
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
