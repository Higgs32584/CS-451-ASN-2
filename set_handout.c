/* set.c */

#include "ht.h"
#include "set.h"


tSet set_collect(tSet s, bool (*f)(void *))
{
}


void set_free(tSet s)
{
}


tSet set_initialize(bool (*compare_function)(void *, void*),
                    int (*hash_function)(void *))
{
}


tSet set_insert(tSet s, void *e)
{
}


tSet set_intersection(tSet s1, tSet s2)
{
}


bool set_member(tSet s, void *e)
{
}


void set_print(tSet s, void (*print_function)(void *))
{
}


tSet set_union(tSet s1, tSet s2)    /* s1 and s2 unchanged */
{
}

