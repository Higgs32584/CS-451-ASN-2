/* main.c -- a set of integers */
#include <stdio.h>
#include <stdlib.h>
#include "set.h"


#define SIZE 5 


/* The next three functions are auxiliary functions for a set of integers */
bool int_compare(void *a, void *b)
{
  return *(int *)a == *(int *)b;
}

int int_hash(void *d)
{
  return (int)*(int *)d;
}

void int_print(int *d)
{
  printf("%d ", *d);
}

/* used to test the collect function */
bool int_isodd(void *d)
{
  return (*(int *)d) & 0x01;
}


int main()
{
  int command;

  tSet set = set_initialize (&int_compare, &int_hash);
  int *item = (int *) check_malloc(sizeof (int));

  while ((command = getchar()) != EOF)
  {
    if (command == 'i' || command == 'm')
      if (1 != scanf("%d", item))
        abort1("scanf kinda wanted an int\n");

    switch (command)
    {
      case 'i':  set_insert(set, item);
                 item = (int *) check_malloc(sizeof (int));
                 break;

      case 'm':  if (set_member(set, item))
                    printf("Found\n");
                 else
                    printf("Not Found\n");
                 break;

      case 'c':  {
                   tSet s2 = set_collect(set, int_isodd);
                   printf("collected :");
                   set_print(s2, int_print);
                   printf("from :");
                   set_print(set, int_print);
                   break;
                 }

      case 'p':  set_print(set, int_print);
                 break;

      case 'q':  set_free(set);
                 exit(0);
    }
  }

  return 0;
}
