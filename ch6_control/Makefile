AS = as
LD = ld
ALL= jump_test call_test
LINK = $(LD) 
LINKC=$(LD) -m elf_i386 -dynamic-linker /lib/ld-linux.so.2  -lc
ASC= $(AS) --32 
DBG= -gstabs
all : $(ALL)

jump_test.o:jump_test.S
	$(AS) $(DBG) -o jump_test.o jump_test.S
jump_test:jump_test.o
	$(LINK) -o jump_test jump_test.o
call_test.o:call_test.S
	$(ASC) -o call_test.o call_test.S
call_test:call_test.o
	$(LINKC) -o call_test call_test.o
clean:
	rm -f *.o $(ALL)
