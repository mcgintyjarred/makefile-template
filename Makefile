# Files
OUTPUT		= 
ASM_SRC		= 
ASM_OBJ		=


# Commands
ASMB		= nasm
COMP		= gcc

# Flags
ASM_F		= -f elf
ASM_O		= -o $(ASM_OBJ) $(ASM_SRC)
CMP_O		= -o $(OUTPUT) $(ASM_OBJ) 


# Code
$(OUTPUT): $(ASM_SRC) $(ASM_OBJ)
	$(COMP) $(CMP_O)

$(ASM_OBJ): $(ASM_SRC)
	$(ASMB) $(ASM_F) $(ASM_O)

clean: 
	rm -f *.o $(OUTPUT)

