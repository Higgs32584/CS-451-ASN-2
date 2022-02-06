CC = gcc -g -O3 -Wall
HT = ../../ht/src
LIST = $(HT)/list

#
# -g debug flag
#
set:	main.o set.o 
	$(CC) -o set main.o set.o $(HT)/ht.o $(HT)/list/list.o $(HT)/list/misc.o 

# a rule for converting .c files to .o files!
.c.o:
	$(CC) -c $*.c -I $(HT) -I $(LIST) -o $*.o 

clean:
	@-/bin/rm set *.bak main.o set.o a.out core xx &> /dev/null

print:
	a2ps --delegate=no -T 4 -q -Avirtual -2 -o xd set.h set.c main.c  


# augment this makefile with the dependence of all .c files in the directory
depend:
	makedepend -I $(HT) -I $(LIST) *.c 
# DO NOT DELETE

main.o: /usr/include/stdio.h /usr/include/bits/libc-header-start.h
main.o: /usr/include/features.h /usr/include/stdc-predef.h
main.o: /usr/include/sys/cdefs.h /usr/include/bits/wordsize.h
main.o: /usr/include/bits/long-double.h /usr/include/gnu/stubs.h
main.o: /usr/include/bits/types.h /usr/include/bits/typesizes.h
main.o: /usr/include/bits/types/__FILE.h /usr/include/bits/types/FILE.h
main.o: /usr/include/bits/libio.h /usr/include/bits/_G_config.h
main.o: /usr/include/bits/types/__mbstate_t.h /usr/include/bits/stdio_lim.h
main.o: /usr/include/bits/sys_errlist.h /usr/include/stdlib.h
main.o: /usr/include/bits/waitflags.h /usr/include/bits/waitstatus.h
main.o: /usr/include/bits/floatn.h /usr/include/bits/floatn-common.h
main.o: /usr/include/sys/types.h /usr/include/bits/types/clock_t.h
main.o: /usr/include/bits/types/clockid_t.h /usr/include/bits/types/time_t.h
main.o: /usr/include/bits/types/timer_t.h /usr/include/bits/stdint-intn.h
main.o: /usr/include/endian.h /usr/include/bits/endian.h
main.o: /usr/include/bits/byteswap.h /usr/include/bits/byteswap-16.h
main.o: /usr/include/bits/uintn-identity.h /usr/include/sys/select.h
main.o: /usr/include/bits/select.h /usr/include/bits/types/sigset_t.h
main.o: /usr/include/bits/types/__sigset_t.h
main.o: /usr/include/bits/types/struct_timeval.h
main.o: /usr/include/bits/types/struct_timespec.h
main.o: /usr/include/sys/sysmacros.h /usr/include/bits/sysmacros.h
main.o: /usr/include/bits/pthreadtypes.h
main.o: /usr/include/bits/thread-shared-types.h
main.o: /usr/include/bits/pthreadtypes-arch.h /usr/include/alloca.h
main.o: /usr/include/bits/stdlib-float.h set.h ../../ht/src/list/misc.h
set.o: ../../ht/src/list/misc.h ../../ht/src/ht.h set.h /usr/include/stdio.h
set.o: /usr/include/bits/libc-header-start.h /usr/include/features.h
set.o: /usr/include/stdc-predef.h /usr/include/sys/cdefs.h
set.o: /usr/include/bits/wordsize.h /usr/include/bits/long-double.h
set.o: /usr/include/gnu/stubs.h /usr/include/bits/types.h
set.o: /usr/include/bits/typesizes.h /usr/include/bits/types/__FILE.h
set.o: /usr/include/bits/types/FILE.h /usr/include/bits/libio.h
set.o: /usr/include/bits/_G_config.h /usr/include/bits/types/__mbstate_t.h
set.o: /usr/include/bits/stdio_lim.h /usr/include/bits/sys_errlist.h
set.o: /usr/include/stdlib.h /usr/include/bits/waitflags.h
set.o: /usr/include/bits/waitstatus.h /usr/include/bits/floatn.h
set.o: /usr/include/bits/floatn-common.h /usr/include/sys/types.h
set.o: /usr/include/bits/types/clock_t.h /usr/include/bits/types/clockid_t.h
set.o: /usr/include/bits/types/time_t.h /usr/include/bits/types/timer_t.h
set.o: /usr/include/bits/stdint-intn.h /usr/include/endian.h
set.o: /usr/include/bits/endian.h /usr/include/bits/byteswap.h
set.o: /usr/include/bits/byteswap-16.h /usr/include/bits/uintn-identity.h
set.o: /usr/include/sys/select.h /usr/include/bits/select.h
set.o: /usr/include/bits/types/sigset_t.h
set.o: /usr/include/bits/types/__sigset_t.h
set.o: /usr/include/bits/types/struct_timeval.h
set.o: /usr/include/bits/types/struct_timespec.h /usr/include/sys/sysmacros.h
set.o: /usr/include/bits/sysmacros.h /usr/include/bits/pthreadtypes.h
set.o: /usr/include/bits/thread-shared-types.h
set.o: /usr/include/bits/pthreadtypes-arch.h /usr/include/alloca.h
set.o: /usr/include/bits/stdlib-float.h
set_handout.o: ../../ht/src/ht.h set.h /usr/include/stdio.h
set_handout.o: /usr/include/bits/libc-header-start.h /usr/include/features.h
set_handout.o: /usr/include/stdc-predef.h /usr/include/sys/cdefs.h
set_handout.o: /usr/include/bits/wordsize.h /usr/include/bits/long-double.h
set_handout.o: /usr/include/gnu/stubs.h /usr/include/bits/types.h
set_handout.o: /usr/include/bits/typesizes.h /usr/include/bits/types/__FILE.h
set_handout.o: /usr/include/bits/types/FILE.h /usr/include/bits/libio.h
set_handout.o: /usr/include/bits/_G_config.h
set_handout.o: /usr/include/bits/types/__mbstate_t.h
set_handout.o: /usr/include/bits/stdio_lim.h /usr/include/bits/sys_errlist.h
set_handout.o: /usr/include/stdlib.h /usr/include/bits/waitflags.h
set_handout.o: /usr/include/bits/waitstatus.h /usr/include/bits/floatn.h
set_handout.o: /usr/include/bits/floatn-common.h /usr/include/sys/types.h
set_handout.o: /usr/include/bits/types/clock_t.h
set_handout.o: /usr/include/bits/types/clockid_t.h
set_handout.o: /usr/include/bits/types/time_t.h
set_handout.o: /usr/include/bits/types/timer_t.h
set_handout.o: /usr/include/bits/stdint-intn.h /usr/include/endian.h
set_handout.o: /usr/include/bits/endian.h /usr/include/bits/byteswap.h
set_handout.o: /usr/include/bits/byteswap-16.h
set_handout.o: /usr/include/bits/uintn-identity.h /usr/include/sys/select.h
set_handout.o: /usr/include/bits/select.h /usr/include/bits/types/sigset_t.h
set_handout.o: /usr/include/bits/types/__sigset_t.h
set_handout.o: /usr/include/bits/types/struct_timeval.h
set_handout.o: /usr/include/bits/types/struct_timespec.h
set_handout.o: /usr/include/sys/sysmacros.h /usr/include/bits/sysmacros.h
set_handout.o: /usr/include/bits/pthreadtypes.h
set_handout.o: /usr/include/bits/thread-shared-types.h
set_handout.o: /usr/include/bits/pthreadtypes-arch.h /usr/include/alloca.h
set_handout.o: /usr/include/bits/stdlib-float.h ../../ht/src/list/misc.h
