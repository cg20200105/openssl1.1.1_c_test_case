# Makefile for compiling and running test.c with OpenSSL

# Directories
OPENSSL_DIR = ./openssl-1.1.1
INCLUDE_DIR = $(OPENSSL_DIR)/include
LIB_DIR = $(OPENSSL_DIR)

# Compiler and flags
CC = gcc
CFLAGS = -I$(INCLUDE_DIR)
LDFLAGS = -L$(LIB_DIR) -lssl -lcrypto -ldl -lpthread

# Target executable
TARGET = test

# Source files
SRCS = test.c

# Object files
OBJS = $(SRCS:.c=.o)

# Default target
all: $(TARGET)

# Compile the target
$(TARGET): $(OBJS)
	$(CC) -o $(TARGET) $(OBJS) $(CFLAGS) $(LDFLAGS)

# Compile source files to object files
%.o: %.c
	$(CC) -c $< $(CFLAGS)

# Clean up
clean:
	rm -f $(OBJS) $(TARGET)

# Run the target
run: $(TARGET)
	./$(TARGET)

