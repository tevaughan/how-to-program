
hello : hello.o
	ld -s -o $@ $<

hello.o : hello.S
	as -o $@ $<

.PHONY : clean

clean :
	@rm -fv hello
	@rm -fv hello.o

