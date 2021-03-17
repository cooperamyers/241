#include "circleLib.h"

const double PI = 3.14159;

double calcPerim(double radius) {
	int two = 2;
	double perimeter;
	
	perimeter = (radius * two) * PI;
	return perimeter;
	} 

double calcArea(double radius) {
	double temp;
	double area;	

	temp = (radius * radius);
	area = temp * PI;
	return area;
	}
