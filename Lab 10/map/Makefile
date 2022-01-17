#Joseph Kehoe 13/9/2017
#Simple Makefile
#Used to contain commands to compile projects
#Equivalent(?) to a project file in VStudio -- only better!
#See http://www.cs.colby.edu/maxwell/courses/tutorials/maketutor/ for info.

CFILES= saxpy.cpp
HFILES=
CC=g++
CFLAGS= -std=c++11 -pthread -fopenmp
DEBUGFLAGS = -g -O0


#This rule says that each .o file depends on a .cpp file of the same name
%.o: %.cpp
	$(CC) -c -o $@ $< $(CFLAGS) $(DEBUGFLAGS)

HELLO: hello.o
	$(CC)  -o hello.out hello.o $(CFLAGS) $(DEBUGFLAGS)

SAXPY: saxpy.o
	$(CC) -o saxpy.out saxpy.o $(CFLAGS)

MANDEL: mandelbroit.o
	$(CC) -o mandelbroit.out mandelbroit.o $(CFLAGS) $(DEBUGFLAGS)


DSAXPY: DEBUGFLAGS = -g -O0
DSAXPY: SAXPY


SIMPLESUM: simpleSum.o
	$(CC) -o sum.out simpleSum.o $(CFLAGS)

PRIMES: simplePrimes.o
	$(CC) -o primes.out simplePrimes.o $(CFLAGS)
#this is customary and just deletes all .o files
CLEAN:
	rm *.o
