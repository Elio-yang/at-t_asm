AS = as
LD = ld
ALL= mov_test cmov_test bubble_sort
LINKC=$(LD) -m elf_i386 -dynamic-linker /lib/ld-linux.so.2  -lc
ASC= $(AS) --32 -gstabs
all : $(ALL)

mov_test.o:mov_test.S
	$(ASC) -o mov_test.o mov_test.S
mov_test:mov_test.o
	$(LINKC) -o mov_test mov_test.o

cmov_test.o:cmov_test.S
	$(ASC) -o cmov_test.o cmov_test.S
cmov_test:cmov_test.o
	$(LINKC) -o cmov_test cmov_test.o

bubble_sort.o:bubble_sort.S
	$(ASC) -o bubble_sort.o bubble_sort.S
bubble_sort:bubble_sort.o
	$(LINKC) -o bubble_sort bubble_sort.o
clean:
	rm -f *.o $(ALL)
