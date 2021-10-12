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

/**
 * Class for creating tasks to be executed from a thread pool.
 *
 * @author joe
 * @author Benjamin Tremblay
 * @version 10/12/2021
 */
public class Task implements Runnable {
    /** The name of the task */
    private String name;

    /** The total value of the integer */
    private IntegerObj total;

    /**
     * Class constructor specifying task's name and IntegerObj to be used.
     * @param task_1 the String assigned to task's name
     * @param total the IntegerObj to be assigned to total
     */
    public Task(String task_1, IntegerObj total) {
        name=task_1;
        this.total = total;
    }

    /**
     * Increments total by 1 for each iteration and sleeps the thread for 1 second every 100 iterations.
     * <p>
     * This method is called everytime a Task object is executed.
     */
    public void run()
    {
        try
        {
            for (int i = 0; i<500; i++)
            {
                total.inc();
                if (i%100==0){
                   Thread.sleep(100); 
                }
            }
            System.out.println(name+" complete");
        }
        catch(InterruptedException e)
        {
            e.printStackTrace();
        }
    }
}
