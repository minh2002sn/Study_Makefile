PROJECT_NAME = Learning_makefile

SRC = $(wildcard *.c)
OBJ = $(SRC:%c=%o)

run: build
	./$(PROJECT_NAME)

build: $(OBJ)
	gcc $(OBJ) -o $(PROJECT_NAME)

%.o: %.c
	gcc -Wall -c $< -o $@

clean:
	rm *.o *.exe
