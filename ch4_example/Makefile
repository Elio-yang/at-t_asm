AS = as
LD = ld
ALL= cpuid

all : cpuid

cpuid.o:cpuid.S
	as --32 -gstabs -o cpuid.o cpuid.S
cpuid:cpuid.o
	ld -m elf_i386 -dynamic-linker /lib/ld-linux.so.2 -o cpuid -lc cpuid.o 
clean:
	rm -f *.o