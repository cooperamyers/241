#include <stdio.h>
#include "circleLib.h"
#include "newLib.h"

int main (int agrc, char** argv){

	double perimeter;
	double area;
	
	/*
	 * perimeter = calcPerim(3.4);
	 * area = calcArea(3.4);
	*/
	
	perimeter = calcRecPerim(2.5,5.5);
	area = calcRecArea(2.5,5.5);

	printf("Perim: %f \nArea: %f\n", perimeter, area);
	}
