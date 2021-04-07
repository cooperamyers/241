#include <stdio.h>



void changeme(int* x){
	*x += 3;

}





int main(int argc, char** args){
	int val = 3;

	printf("starting value: %d\n", val);
	changeMe(&val);
	printf("ending value: %d\n", val);

}



