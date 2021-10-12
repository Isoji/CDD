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

import java.util.concurrent.locks.ReentrantLock;

/**
 * Class representing an integer. The purpose of this class is to allow
 * the sharing and manipulation of an integer without discarding its value
 * through object reference.
 *
 * @author joe
 * @author Benjamin Tremblay
 * @version 10/12/2021
 */
public class IntegerObj {
    /** The value of the integer */
    int value;

    /** Mutex variable */
    private ReentrantLock mutex = new ReentrantLock();

    /**
     * Class constructor specifying the integer value.
     * @param val an integer
     */
    IntegerObj(int val) {
        this.value = val;
    }

    /**
     * Increments the integer value by 1.
     * @return an integer
     */
    int inc(){
        try {
            mutex.lock();
            this.value++;
            return this.value;
        } finally {
            mutex.unlock();
        }
    }
}
