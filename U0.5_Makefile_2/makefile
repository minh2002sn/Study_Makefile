PROJECT_NAME = Learning_makefile

SRC = $(wildcard *.c)
OBJ = $(SRC:%c=%o)

run: build
	./$(PROJECT_NAME)

# build: main.o func.o
# 	gcc main.o func.o -o main

# main.o:
# 	gcc -c main.c -o main.o

# func.o:
# 	gcc -c func.c -o func.o

build: $(OBJ)
	gcc $(OBJ) -o $(PROJECT_NAME)

%.o: %.c
	gcc -Wall -c $< -o $@

clean:
	rm *.o *.exe
