#include "sorter.h"
#include <stdio.h>
#include <string.h>


void sort(char** contents, int size){
		
		
	// Creates nested for loop variables and a key to compare elements	
	int i, k, j, l;
	char* key;

	// Store contents individually as strings
	// Declaration of a new array with char's contents
	char** array = (char**)malloc(sizeof(char*)*size);
	
	// Using strtok breaking a string into a series of tokens using delimiter of new line
	char* str;
	str = strtok(*contents, "\n");

	// Initialization, adding each line into a new part of the array
	for(i=0; str != NULL; ++i){
		array[i] = (char*)malloc(strlen(str)+sizeof(char));
		for(l=0; l < strlen(str); ++l){
			array[i][l] = str[l];	
		}
		str = strtok(NULL, "\n");
	}

	// Starting my for loop to search through info
	for (k = 1; k < size; k++){
		key = array[k];
		j = k-1;

		while(j >= 0 && array[j] > key){
			array[j+1] = array[j];
			j = j-1;
		}
		array[j + 1] = key;	
	}


	// Copy array into contents
	int q, w;
	int counter = 0;

	for(q=0; q < size; ++q){
		for(w=0; w < strlen(array[i]); ++w){
			contents[0][counter] = array[q][w];
			counter++;
		}
		contents[0][counter] = '\n';
		counter++;
	}	

	int e;
	for(e = 0; e < size; ++e){
		free(array[e]);
	}

	free(array);

}		
