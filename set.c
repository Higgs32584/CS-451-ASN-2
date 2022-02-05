#include "stdio.h"
#include "set.h"
#include <stdbool.h>
#include "stdlib.h"
//This is my code!! Michael Higgins!! The best code ever!!
int sum_happy(int *array, bool (*is_happy)(int)){
	printf("%ls",array);
	int nums_true=0;
	int i=0;
	while(array[i]  > -1){
		if(is_happy(array[i])){
		nums_true+=array[i];
		}
		i+=1;
	}
	return nums_true;
}
bool may_happy(int i){

return i % 10 == 0;


}



int main(){
	int *example;
	example = (malloc(sizeof(int) * 10001));
	
	for(int i=0;i<10000;i++){
	example[i]=i;
	}
	example[10001] = -10;
	printf("sum of even numbers: %d\n",sum_happy(example,may_happy));
}	
