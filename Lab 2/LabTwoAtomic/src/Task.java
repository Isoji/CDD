/*
 * LabTwoAtomic is a small lab project covering Atomic variables in concurrency.
 * Copyright (C) 2021 Benjamin Tremblay
 *
 * This file is part of LabTwoAtomic.
 *
 * LabTwoAtomic is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * LabTwoAtomic is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with LabTwoAtomic.  If not, see <https://www.gnu.org/licenses/>.
 */

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.concurrent.atomic.AtomicInteger;

/**
 * Class for creating tasks to be executed from a thread pool.
 *
 * @author joe
 * @author Benjamin Tremblay
 * @version 10/13/2021
 */
public class Task implements Runnable {
    /** The name of the task */
    private String name;

    /** The total value of the integer */
    private AtomicInteger total;

    /**
     * Class constructor specifying task's name and AtomicInteger to be used.
     * @param task_1 the String assigned to task's name
     * @param total the AtomicInteger to be assigned to total
     */
    public Task(String task_1, AtomicInteger total) {
        name = task_1;
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
            for (int i = 0; i<500; i++) {
                // attempts to assign new incremented value to AtomicInteger until it is successful
                while(true) {
                    int expectedValue = total.get();
                    int incrementedValue = expectedValue + 1;

                    if (total.compareAndSet(expectedValue, incrementedValue)) {
                        break;
                    }
                }
                if (i % 100 == 0) {
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
