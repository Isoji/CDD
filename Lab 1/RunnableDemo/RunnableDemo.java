/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.itcarlow.runnabletest;

/**
 * RunnableDemo is the base class that allows applications to create, start
 * and run threads using the Runnable interface.
 * @author KEHOEJ
 */
public class RunnableDemo implements Runnable {
   private Thread t;
   private String threadName;

   /**
    * Constructs a RunnableDemo object and assigns the specified string to the
    * threadName property.
    * @param name Name of the thread
    */
   RunnableDemo( String name) {
      threadName = name;
      System.out.println("Creating " +  threadName );
   }

   /**
    * Counts down from 4 to 0, sleeping the thread for 50 milliseconds after each
    * iteration.
    *
    * The run method is executed by each separate thread as they are started.
    */
   @Override
   public void run() {
      System.out.println("Running " +  threadName );
      try {
         for(int i = 4; i > 0; i--) {
            System.out.println("Thread: " + threadName + ", " + i);
            // Let the thread sleep for a while.
            Thread.sleep(50);
         }
      } catch (InterruptedException e) {
         System.out.println("Thread " +  threadName + " interrupted.");
      }
      System.out.println("Thread " +  threadName + " exiting.");
   }

   /**
    * Creates and starts the RunnableDemo object's thread
    */
   public void start () {
      System.out.println("Starting " +  threadName );
      if (t == null) {
         t = new Thread (this, threadName);
         t.start ();
      }
   }
}
