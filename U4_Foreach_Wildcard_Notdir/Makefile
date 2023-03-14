#Simple rule
#target : prerequisites
#	recipe
#	...

#Variables
SRC_DIRS		=  D:\A_Minh\B_Makefile_Projects\U4_Foreach_Wildcard_Notdir\source
SRC_DIRS		+= D:\A_Minh\B_Makefile_Projects\U4_Foreach_Wildcard_Notdir\libs

SRC_FILES		:= $(foreach SRC_DIRS, $(SRC_DIRS), $(wildcard $(SRC_DIRS)/*))

OJB_FILES		:= $(notdir $(SRC_FILES))
OJB_FILES		:= $(subst .c,.o, $(OJB_FILES))

PRO_DIR			:= .
PRO_NAME		:= U4_Foreach_Wildcard_Notdir
OUTPUT_PATH		:= $(PRO_DIR)/output

build: main.o
	gcc output/main.o -o output/$(PRO_NAME).exe
	./output/$(PRO_NAME).exe

main.o: source/main.c
	gcc -c source/main.c -o output/main.o

# File name "clean" has been created
# If not using "PHONY" keyword, the message "make: 'clean' is up to date" is show.
.PHONY: clean
clean:
	rm output/*

# Print variable
# Add '@' before recipe to do not print recipe in terminal
print-%:
	@echo $($(subst print-,,$@))
