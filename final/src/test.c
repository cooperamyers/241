#include "test.h"
#include "math.h"
#include "student.h"
#include <stdlib.h>

/**
 * Example for demonstration at start of test.
 */

int example(){
	return 42;
}

/**
 * Warmup (but counts for credit!)
 * Square the value x points to.
 */
void easyPeasy(int* x){
	// Multiplying the pointer of x twice in order to square the value.
	*x = *x * *x;
	// I was considering this but I know the answer above is correct.
	// *x *= *x;
	// Void so no return, same with these other methods below.
}

/**
 * Set a's first name to "Jigglypuff".
 * Set the last name to "Ketchum".
 * Set the g number to 10, the gpa to 1.16.
 */
void one(Student* a){
	// Assigning values to student a.
	a->first_name = "Jigglypuff";
	a->last_name = "Ketchum";
	a->g_number = 10;
	//Jigglypuff better use it's cute charm to get that gpa up!
	a->gpa = 1.16;
}

/**
 * Copy the information from Student b to Student a.
 * (pointer parameters).
 */
void two(Student* a, Student* b){
	// Assigning values of pointer b equal to values of pointer a.
	a->first_name = b->first_name;
	a->last_name = b->last_name;
	a->g_number = b->g_number;
	a->gpa = b->gpa;
	a->roommate = b->roommate;
}

/**
 * Copy the information from Student a to Student b.
 * (mixed variable type parameters).
 */

void three(Student a, Student* b){
	// B is a pointer while a has no pointer.
	b->first_name = a.first_name;
	b->last_name = a.last_name;
	b->g_number = a.g_number;
	b->gpa = a.gpa;
	b->roommate = a.roommate;
}

/**
 * Create and return a Student.  Give it the values
 * "T. Yoshisaur" (first_name)
 * "Munchakoopas" (last_name)
 * 1990		  (g_number)
 * 3.1		  (gpa)
 * Mario	  (roommate [defined above])
 * Remember: C is pass by copy ONLY.
 */
Student four(){
	Student a;
	// Storing new values in student a.
	a.first_name = "T. Yoshisaur";
	a.last_name = "Munchakoopas";
	a.g_number = 1990;
	a.gpa = 3.1;
	// Mario is already defined so we use &.
	a.roommate = &Mario;
	// Returning the student a.
	return a;
}

/**
 * Create and return a Student*.  Give it the value
 * "Luigi" (first_name)
 * "Mario" (last_name)
 * 2       ( :( )
 * 3.54    (gpa [we know he's the smart one])
 * Remember: C is pass by copy ONLY.
 */
Student* five(){
	// We make the student static because ofthe scope of where it is defined.
	static Student z;
	z.first_name = "Luigi";
	z.last_name = "Mario";
	z.g_number = 2;
	z.gpa = 3.54;
	// Returning the student.
	return &z;
}

/**
 * Create a hunk of memory we can use as an array of 10
 * Students.  Set the 4th element (meaning use array
 * index 3) to
 *
 * "Luigi" (first_name)
 * "Mario" (last_name)
 * 2       ( :( )
 * 3.54    (gpa [we know he's the smart one])
 */
Student* six(){
	// Creating memory for array of ten students
	Student* mem = (Student*) malloc(sizeof(Student)*10);
	// Array index 3 (fourth element) would be mem[3].
	mem[3].first_name = "Luigi"; 
	mem[3].last_name = "Mario";
	mem[3].g_number = 2;
	mem[3].gpa = 3.54;
	// Return statement
	return mem;
}

/**
 * Seven will take a pointer to a pointer.  It should
 * create a hunk of memory that can be used as an array
 * of size 10, and will set the pointer correctly so
 * that the "array" is usable in main.
 * Set the 4th (index 3) element equal to
 *
 * "Luigi" (first_name)
 * "Mario" (last_name)
 * 2       ( :( )
 * 3.54    (gpa [we know he's the smart one])
 */
void seven(Student** students){
	// Creating the array of size ten again with parameter.
	*students = (Student*) malloc(sizeof(Student) * 10);
	// Array index 3 is students[3].
	(*students)[3].first_name = "Luigi";
	(*students)[3].last_name = "Mario";
	(*students)[3].g_number = 2;
	(*students)[3].gpa = 3.54;
	// I think my first portion is correct creating the memory.
	// I started by copying my student* six, but the compiler said to use pointers.
}

/**
 * Given a, b, and c calculate the first solution for
 * the quadratic equation (given below).
 *
 * -b + sqrt(b^2 - 4ac) / (2a)
 */
double quadratic(double a, double b, double c){
	// Added parenthesis and fixed some multiplication from comment above.
	double quadSolution = ((-b) + (sqrt((b*b) - (4 * (a * c))))) / (2*a);
	return quadSolution;
	// I tested this with a = 1, b = 9, c = 18, and it returned -3 which is correct.
}

/**
 * Given a "string" (a character array) and a length,
 * replace each lower case character with its uppercase
 * equivalent.
 *
 * Do not use any string functions provided by the library.
 * Merely check to see if each character is between the
 * range of values for a lowercase letter.  If it is,
 * replace it with the uppercase value equivalent.
 *
 * If you are writing more than five lines you are doing it wrong.
 */
#include <stdio.h>
void capitalize(char* str, size_t len){
	// For loop iterating through str
	for(int i=0;i<len;i++){
		//97 is where a starts on the ascii table
		//122 is where z ends on the ascii table
		if(str[i]>=97 && str[i] <= 122){
			// The -32 conversion changes the character from lowercase to uppercase
			str[i] -= 32;
		}
	}
}
