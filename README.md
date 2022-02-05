# CS-451-ASN-2
Part A-->

This function takes an array of positive numbers and a (pointer to a) happiness function and returns
the sum of the elements of the array for which the happiness function returns true:
int sum_happy(int *array, bool (*is_happy)(int))
The array includes a negative value as a sentinel marking the end of the list. Consider writing
print_happy as a plateau


Part B-->

Given two sets of positive numbers represented as arrays with a negative sentinel value, place the
intersection into a third parameter:
void set_intersection(int *s1, int *s2, int *result).
Consider writing void print_intersection(int *s1, int *s2) as a plateau.

