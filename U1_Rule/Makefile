
main.o: source/main.c
	gcc -c source/main.c -o output/main.o

build: output/main.o
	gcc output/main.o -o output/U1_Rule.exe
	./output/U1_Rule.exe

clean:
	rm output/*