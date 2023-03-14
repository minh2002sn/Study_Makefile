
build: main.o
	gcc output/main.o -o output/U2_Rule_Phony.exe
	./output/U2_Rule_Phony.exe

main.o: source/main.c
	gcc -c source/main.c -o output/main.o

.PHONY: clean
clean:
	rm output/*