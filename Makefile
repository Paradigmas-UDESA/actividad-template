# Starter Makefile for Paradigmas activities.
#
# The course dev container standardizes on g++, so there is no
# Darwin/Linux branching -- if you're inside the container, g++ is the
# only compiler that matters, and googletest/SFML are already installed
# system-wide (no brew/apt prefix lookups needed).
#
# This assumes the common case: your .cpp files (production code + gtest
# TEST() cases, no hand-written main() -- gtest_main provides it) live at
# the repo root and get linked into one binary. That covers most "write
# some functions + unit tests" activities.
#
# It will NOT fit every activity as-is:
#   - Black-box exercises that run a compiled student program as a
#     subprocess and diff its output need a different `test` target.
#   - Multi-target projects (e.g. a GUI binary + a separate test binary
#     that excludes GUI sources) need separate SRC lists per target.
# Adjust freely -- this is a starting point, not a constraint.
#
# SRC is empty until you add .cpp files; `make build` has nothing to do
# yet, which is expected for a freshly created activity repo.

CXX = g++
CXXFLAGS = -std=c++17 -Wall -Wextra -g
TEST_LIBS = -lgtest -lgtest_main -pthread

SRC = $(wildcard *.cpp)
TARGET = run_tests

all: build

build: $(SRC)
	$(CXX) $(CXXFLAGS) $(SRC) -o $(TARGET) $(TEST_LIBS)

test: build
	./$(TARGET)

valgrind: build
	valgrind --leak-check=full --show-leak-kinds=all --track-origins=yes ./$(TARGET)

clean:
	rm -f $(TARGET)
	rm -rf $(TARGET).dSYM

.PHONY: all build test valgrind clean
