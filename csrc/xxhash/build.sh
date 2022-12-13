[ "$CC" ] || CC=gcc
mkdir -p ../../bin/$P
${X}${CC} -c -O3 $C *.c -I. \
	-std=c99 -Wall -Wextra -Wshadow -Wcast-qual -Wcast-align \
	-Wstrict-prototypes -Wstrict-aliasing=1 -Wswitch-enum -Wundef -pedantic
${X}${CC} *.o -shared -o ../../bin/$P/$D $L
rm -f      ../../bin/$P/$A
${X}ar rcs ../../bin/$P/$A *.o
rm *.o
