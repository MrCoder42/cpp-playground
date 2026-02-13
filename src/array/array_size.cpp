/*
 * File:    array_size.cpp
 * Author:  Ashish Rai
 * Date:    13 Februrary 2026
 *
 * Program to get the array size (bytes & item counts).
 */

#include <iostream>
#include <string>

int main() {
  std::string planets[] = {"Mercury", "Venus", "Earth", "Mars",
                          "Jupiter", "Saturn", "Uranus", "Neptune"};

  // sizeof(array) returns size in bytes
  int planet_count = sizeof(planets) / sizeof(planets[0]);

  std::cout << "Planets count: " << planet_count << std::endl;

  // i < 8 would require that array size if fixed.
  // sizeof() to loop through an array of any size.
  for (int i = 0; i < planet_count; i++) 
    std::cout << "• " << planets[i] << std::endl;

  std::cout << "\n\nCongratulations! You sucessfully got the array size."
            << std::endl;

  return 0;
}
