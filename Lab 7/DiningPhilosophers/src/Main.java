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
 * A testing class.
 * @author Benjamin Tremblay
 * @version 11/15/2021
 */
public class Main {
    // Number of philosophers/forks to create
    final static int NB_OF_PHILOSOPHERS = 5;
    /**
     * Creates NB_OF_PHILOSOPHERS forks and NB_OF_PHILOSOPHERS Philosopher objects,
     * starting each Philosopher object once they have been created.
     * @param args Unused
     */
    public static void main(String[] args){
        Semaphore[] forks = new Semaphore[NB_OF_PHILOSOPHERS];
        Semaphore footman = new Semaphore(NB_OF_PHILOSOPHERS-1);
        Semaphore mutex = new Semaphore(1);

        // Creates and adds NB_OF_PHILOSOPHERS forks to the forks array
        for (int i = 0; i < NB_OF_PHILOSOPHERS; i++){
            forks[i] = new Semaphore(1);
        }
        // Creates NB_OF_PHILOSOPHERS Philosopher objects and starts them
        for (int i = 0; i < NB_OF_PHILOSOPHERS; i++){
           new Philosopher(forks, mutex, footman, i).start();
        }
    }
}