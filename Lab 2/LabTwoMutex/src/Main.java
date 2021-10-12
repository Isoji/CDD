/*
 * LabTwoMutex is a small lab project covering Mutex variables in concurrency.
 * Copyright (C) 2021 Benjamin Tremblay
 *
 * This file is part of LabTwoSynchronised.
 *
 * LabTwoMutex is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * LabTwoMutex is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with LabTwoMutex.  If not, see <https://www.gnu.org/licenses/>.
 */

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * Main class for testing the project.
 *
 * @author joe
 * @author Benjamin Tremblay
 * @version 10/12/2021
 */
public class Main {

    /** The max number of threads in thread pool */
    static final int MAX_T = 4;

    /**
     * Creates multiple Task objects sharing the same IntegerObj object and executes them from a thread pool.
     * @param args Unused
     */
    public static void main(String[] args)
    {
        IntegerObj total = new IntegerObj(0);
        // creates five tasks
        Runnable r1 = new Task("task 1",total);
        Runnable r2 = new Task("task 2",total);
        Runnable r3 = new Task("task 3",total);
        Runnable r4 = new Task("task 4",total);    
          
        // creates a thread pool with MAX_T no. of 
        // threads as the fixed pool size(Step 2)
        ExecutorService pool = Executors.newFixedThreadPool(MAX_T);
         
        // passes the Task objects to the pool to execute (Step 3)
        pool.execute(r1);
        pool.execute(r2);
        pool.execute(r3);
        pool.execute(r4);
          
        // pool shutdown ( Step 4)
        pool.shutdown();    
        try {
            Thread.sleep(2500);
        } catch (InterruptedException ex) {
            Logger.getLogger(Main.class.getName()).log(Level.SEVERE, null, ex);
        }
        System.out.println("total is: "+total.value);
    }
}
