# https://stackoverflow.com/questions/30573481/how-to-write-a-makefile-with-separate-source-and-header-directories

PROJECT_NAME = main

CC			=	gcc
RM			=	rm
# Flag for C compiler
CFLAGS		=	-Wall
# Flag to preprocessor
# "-I" + "[directory]"	=> Find header file in [directory]
#	Ex: -Iinclude		=> Find header file in folder name "include"
# CPPFLAGS	=	-Iinclude
CPPFLAGS	=	-I
# Flag for linker
# "-L" + "directory"	=> Finc libraries in [directory]
#	Ex: -Llib			=> Find libraries in folder name "lib"
#LDFLAGS		:=	-Llib
#LDLIBS		:=	-lm

INC_DIR		=	include
SRC_DIR		=	source
OBJ_DIR		=	output
BIN_DIR		=	bin

SRC = $(wildcard $(SRC_DIR)/*.c)
OBJ = $(SRC:$(SRC_DIR)/%.c=$(OBJ_DIR)/%.o)
EXE = $(BIN_DIR)/$(PROJECT_NAME)

.PHONY: run
run: all
	./$(EXE)

.PHONY: all
all: $(EXE)

$(EXE): $(OBJ)
	$(CC) $^ -o $@

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c
	$(CC) $(CPPFLAGS) $(INC_DIR) $(CFLAGS) -c $< -o $@ 

.PHONY: clean
clean:
	$(RM) $(OBJ_DIR)/* $(BIN_DIR)/*
#	$(RM) $(BIN_DIR)/*
