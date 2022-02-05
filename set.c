#include "stdio.h"
#include "set.h"
#include <stdbool.h>
#include "stdlib.h"
//This is my code!! Michael Higgins!! The best code ever!!
int sum_happy(int *array, bool (*is_happy)(int)){
	printf("%ls",array);
	int sum_true_nums=0;
	int i=0;
	while(array[i]  > -1){
		if(is_happy(array[i])){
		sum_true_nums+=array[i];
		}
		i+=1;
	}
	return sum_true_nums;
}
bool happiness_function(int i){

return i % 10 == 0;


}



int main(){
	int *array_main;
	array_main= (malloc(sizeof(int) * 10001));
	
	for(int i=0;i<10000;i++){
	array_main[i]=i;
	}
	array_main[10001] = -10;
	printf("sum of even numbers: %d\n",sum_happy(example,happiness_function));
}	
