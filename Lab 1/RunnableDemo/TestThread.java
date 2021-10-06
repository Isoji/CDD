/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.itcarlow.runnabletest;

/**
 * TestThread is the testing class for RunnableDemo
 * @author KEHOEJ
 */
public class TestThread {
    /**
     * Creates and starts two RunnableDemo objects/threads for demonstration
     * purposes.
     * @param args Unused
     */
    public static void main(String args[]) {
        RunnableDemo R1 = new RunnableDemo( "Thread-1");
        R1.start();
        RunnableDemo R2 = new RunnableDemo( "Thread-2");
        R2.start();
    }   
    
}