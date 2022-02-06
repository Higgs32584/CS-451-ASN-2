#include "stdio.h"
#include "set.h"
#include <stdbool.h>
#include <assert.h>
#include "stdlib.h"
// general
//   1  compiles cleanly
//   4  file header comment devoid of your name :)
//   8  function header comments missing
//      unwanted print statements inside ADT
//      functions not in alphabetic order (close :) )

// testing
//   1  fails empty list test
//   8  fails other tests


//This is my code!! Michael Higgins!! The best code ever!!
int sum_happy(int *array, bool (*is_happy)(int)){
	int sum_true_nums=0;
	int i=0;
	while(array[i] > -1){
		if(is_happy(array[i])){
		sum_true_nums+=array[i];
		}
		if(!array[i]){
			printf("List is empty!!");
			return sum_true_nums;
		}
		printf("i: %d \n",i);
		printf("array[i]: %d \n",array[i]);
		i+=1;
	}
	return sum_true_nums;
}
bool happiness_function(int i){

return i % 10 == 0;
}
void set_intersection(int *s1, int *s2, int *result){
	
	}
int main(){
//Part B__________________________________________________________________________
	int *array_main;
	array_main= (malloc(sizeof(int) * 100));
	//array_main[0]= 0;
	// for(int i=0;i<10000;i++){
	// 	array_main[i]=i;
	// 	}
	// array_main[10001] = -10;
	sum_happy(array_main,happiness_function);
	int s1[]={1,3,445,443,4334,33434};
	int s2[]={1,3,445,443,4334,33434};
	int result[sizeof(s1)];
	set_intersection(s1,s2,result);
	free(array_main);
}
