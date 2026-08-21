# Starter Makefile for Paradigmas activities.
#
# The course dev container standardizes on g++, so there is no
# Darwin/Linux branching here -- if you're seeing this file, you're
# already inside the container and g++ is the only compiler that matters.
# googletest and SFML are installed system-wide in the image; no brew/apt
# prefix lookups needed.

CXX = g++
CXXFLAGS = -std=c++17 -Wall -Wextra -g
TEST_LIBS = -lgtest -lgtest_main -pthread

SRC = $(wildcard src/*.cpp)
TEST_SRC = $(wildcard tests/*.cpp)
TARGET = run_tests

all: build

build: $(SRC) $(TEST_SRC)
	$(CXX) $(CXXFLAGS) -Isrc $(SRC) $(TEST_SRC) -o $(TARGET) $(TEST_LIBS)

test: build
	./$(TARGET)

valgrind: build
	valgrind --leak-check=full --show-leak-kinds=all --track-origins=yes ./$(TARGET)

clean:
	rm -f $(TARGET)
	rm -rf $(TARGET).dSYM

.PHONY: all build test valgrind clean
