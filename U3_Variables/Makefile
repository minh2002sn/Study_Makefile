#Simple rule
#target : prerequisites
#	recipe
#	...

#Variables
PRO_DIR			:= .
PRO_NAME		:= U3_Variables
OUTPUT_PATH		:= $(PRO_DIR)/output

build: main.o
	gcc output/main.o -o output/U3_Variables.exe
	./output/U3_Variables.exe

main.o: source/main.c
	gcc -c source/main.c -o output/main.o

# File name "clean" has been created
# If not using "PHONY" keyword, the message "make: 'clean' is up to date" is show.
.PHONY: clean
clean:
	rm output/*

# Print variable
# Add '@' before recipe to do not print recipe in terminal

print_1:
	@echo $(OUTPUT_PATH)

print_2:
	@echo $(subst abc, ABC, abc ACB abc)

print_3-%:
	@echo $@

print_4-%:
	@echo $(subst print_4-,,$@)

print_5-%:
	@echo $($(subst print_5-,,$@))
