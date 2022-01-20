// simpleSum.cpp ---
//
// Filename: simpleSum.cpp
// Description:
// Author: Joseph Kehoe
// Maintainer:
// Created: Fri Dec  3  15:12:18 2021 (+0000)
// Version:
// Package-Requires: ()
// Last-Updated:
//           By: Joseph
//     Update #:
// URL:
// Doc URL:
// Keywords:
// Compatibility:
//
//

// Commentary:
//
//
//
//

// Change Log:
//
//
//
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or (at
// your option) any later version.
//
// This program is distributed in the hope that it will be useful, but
// WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
// General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with GNU Emacs.  If not, see <http://www.gnu.org/licenses/>.
//
//

// Code:
#include <iostream>
#include <stdlib.h>     /* srand, rand */
#include <time.h>       /* time */
#include <limits>

int main(void){
  const unsigned long SIZE=1000000;
  float numberArray[SIZE];
  float sum=0.0;
  /* initialize random seed: */
  srand (time(NULL));
  for(unsigned long long int i=0;i<SIZE;++i){
    /* generate secret number between 1 and 1000: */
    numberArray[i] = rand() % 1000 + 1;
  }
  clock_t begin = clock();
  //#pragma omp for reduction(+ : sum)
  for (unsigned long i=0; i < SIZE; ++i){
      sum=sum+numberArray[i];
  }//for
  clock_t end = clock();
  double timeSec = (end - begin) / static_cast<double>( CLOCKS_PER_SEC );
  std::cout << timeSec << std::endl;
  std::cout << sum << std::endl;
}//main

//
/// simpleSum.cpp ends here
