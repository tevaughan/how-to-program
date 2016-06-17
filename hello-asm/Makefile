
hello : hello.o
	ld -s -o $@ $<

hello.o : hello.S
	as -g -o $@ $<

.PHONY : clean

clean :
	@rm -fv hello
	@rm -fv hello.o

