# Makefile extra credit
# COSC 381
#
CC		= clang
CFLAGS		= -Wall
LDFLAGS		= 
OBJFILES	= driver.o file1.o file2.o
TARGET 		= makefileAssignment

all: $(TARGET)

$(TARGET): $(OBJFILES)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJFILES) $(LDFLAGS)

file1.o : file1.c headers.h

file2.o : file2.c headers.h

driver.o : driver.c headers.h

clean:
	rm -fr $(TARGET) $(OBJFILES)