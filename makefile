# Compiler
CC := g++

# Compiler flags
CFLAGS := 

# SFML libraries
SFML_LIBS := -lsfml-graphics -lsfml-window -lsfml-system -lsfml-audio -lsfml-network

# SFML include directory
SFML_INCLUDE := -Isrc/include
SFML_LINKER := -Lsrc/lib

# Source files
SRCS := main.cpp

# Object files
OBJS := $(SRCS:.cpp=.o)

# Executable name
TARGET := main

# Default target
all: $(TARGET)

# Rule to build the executable
$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) $(OBJS) -o $(TARGET) $(SFML_LINKER) $(SFML_LIBS)

# Rule to build object files
%.o: %.cpp
	$(CC) $(CFLAGS) $(SFML_INCLUDE) -c $< -o $@

# Clean rule
clean:
	rm -f $(OBJS) $(TARGET)
