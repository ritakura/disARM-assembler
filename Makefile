CXX = g++
CXXFLAGS = -std=c++14 -Wall

PROGS = disarmas

all: $(PROGS)
	@:

%: %.cpp
	$(CXX) $(CXXFLAGS) -o $@ $@.cpp

.PHONY: clean
clean:
	rm $(PROGS)