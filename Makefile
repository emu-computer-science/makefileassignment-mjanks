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

clean:
	rm -fr $(TARGET) $(OBJFILES)