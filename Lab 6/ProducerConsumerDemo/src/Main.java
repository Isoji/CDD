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
 * A testing class.
 * @author Benjamin Tremblay
 * @version 11/08/2021
 */
public class Main {
    //Number of permits used for the buffer semaphore
    final static int BUFFER_SIZE = 5;

    /**
     * Creates both a Producer and a Consumer object and starts them.
     * @param args Unused
     */
    public static void main(String[] args){
        LinkedList<String> events = new LinkedList();
        Semaphore filled = new Semaphore(0);
        Semaphore buffer = new Semaphore(BUFFER_SIZE);
        Semaphore mutex = new Semaphore(1);

        Producer p = new Producer(events, filled, buffer, mutex);
        Consumer c = new Consumer(events, filled, buffer, mutex);

        p.start();
        c.start();
    }
}
