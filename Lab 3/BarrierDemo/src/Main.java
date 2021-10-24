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
 * A testing class.
 * @author Benjamin Tremblay
 * @version 10/24/2021
 */
public class Main {

    /**
     * Creates multiple Task objects and starts them.
     * @param args Unused
     */
    public static void main(String[] args) {
        Barrier barrier = new Barrier(4);

        Task task1 = new Task(barrier, "Task 1");
        Task task2 = new Task(barrier, "Task 2");
        Task task3 = new Task(barrier, "Task 3");
        Task task4 = new Task(barrier, "Task 4");

        task1.start();
        task2.start();
        task3.start();
        task4.start();
    }
}
