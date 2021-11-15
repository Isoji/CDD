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
 * A producer thread that creates events to be processed by a Consumer object.
 * @author Benjamin Tremblay
 * @version 11/08/2021
 */
public class Producer implements Runnable{
    private Thread t;
    private LinkedList events; // shared LinkedList that contains the produced events
    private Semaphore filledCount; // starts with 0 permits, tracks the amount of events produced
    private Semaphore bufferSlots; // starts with BUFFER_SIZE permits, tracks the buffer space available
    private Semaphore mutex; // starts with 1 permit
    private int eventNum = 1; // event number counter
    private String event;

    /**
     * Creates a Producer with the specified LinkedList and Semaphore objects that are to be shared with a Consumer.
     * @param events the LinkedList object assigned to events
     * @param filledCount the Semaphore object assigned to filledCount
     * @param bufferSlots the Semaphore object assigned to bufferSlots
     * @param mutex the Semaphore object assigned to mutex
     */
    public Producer(LinkedList events, Semaphore filledCount, Semaphore bufferSlots, Semaphore mutex){
        this.events = events;
        this.filledCount = filledCount;
        this.bufferSlots = bufferSlots;
        this.mutex = mutex;
    }

    /**
     * Creates a String with an appended incremented integer value.
     * @return the created String
     */
    public String produceEvent(){
        String tempEvent = "Event " + this.eventNum;
        event = tempEvent;
        eventNum++;
        return tempEvent;
    }

    /**
     * Produces an event and adds it to the shared LinkedList, then increments the filledCount permits.
     */
    @Override
    public void run() {
        try {
            for (int i = 0; i < 20; i++) {
                bufferSlots.acquire();
                mutex.acquire();
                    events.add(produceEvent());
                    System.out.println("Produced " + this.event);
                    filledCount.release();
                mutex.release();
                Thread.sleep((long)(Math.random() * 100));
            }
        }catch(InterruptedException e){
            e.getStackTrace();
        }
    }

    /**
     * Starts the object's thread
     */
    public void start(){
        if (t == null) {
            t = new Thread (this);
            t.start ();
        }
    }
}
