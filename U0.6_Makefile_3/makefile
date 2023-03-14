PROJECT_NAME = main

SRC = $(wildcard *.c)
OBJ = $(SRC:%.c=%.o)
EXE = $(PROJECT_NAME)

build: main.o func.o
	gcc main.o func.o -o main

main.o:
	gcc -c main.c -o main.o

func.o:
	gcc -c func.c -o func.o

clean:
	rm *.o *.exe
