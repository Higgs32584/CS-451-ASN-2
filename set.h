/* set.h */

/* copyright (c) David Binkley 2022 */

#ifndef _SET
#define _SET

#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <misc.h>


typedef struct sSet *tSet;


// Some cast magic to smooth over places where C's type system is lacking.
// See if you can work out how Java's type system would deal with this issue.
typedef void (*FN2ARG)(void *, void *);
typedef void (*FN3ARG)(void *, void *, void *);



/* exported set functions */
/* [[ consider first producing a header comment for each function below. ]] */

tSet set_initialize(bool (*compare_function)(void *, void*),
    	    int (*hash_function)(void *));
void    set_free(tSet);
bool    set_member(tSet, void*);
tSet    set_insert(tSet, void*);
tSet    set_intersection(tSet, tSet);
tSet    set_union(tSet, tSet);
tSet    set_collect(tSet, bool (*f)(void *) );
void    set_print(tSet, void (*print_function)());

/* other possible functions include 
tSet    set_copy (tSet); // shallow copy
tSet    set_copy_replicating_elements(tSet, void *(*f)()); // deap copy
void    set_foreach(tSet, void (*f)());
void    set_foreach1(tSet, void (*f)(), void*);
void    set_foreach2(tSet, void (*f)(), void*, void*);
void    set_foreach3(tSet, void (*f)(), void*, void*, void*);
void    set_foreach4(tSet, void (*f)(), void*, void*, void*, void*);

int     set_isempty(tSet);
void*   set_any_member(tSet);
void*   set_remove_any(tSet);
void*   set_remove(tSet, void*);
int     set_equal(tSet, tSet);
tSet    set_difference(tSet, tSet);
void    set_remove_all_matching(tSet, void*);

*/

#endif
