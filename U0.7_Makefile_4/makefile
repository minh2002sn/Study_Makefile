PROJECT_NAME = main

SRC = $(wildcard *.c)
OBJ = $(SRC:%.c=%.o)
EXE = $(PROJECT_NAME)

run: all
	./$(PROJECT_NAME)

all: $(EXE)

$(EXE): $(OBJ)
	gcc $^ -o $@

%.o: %.c
	gcc -Wall -c $< -o $@ 

clean:
	rm *.o *.exe
