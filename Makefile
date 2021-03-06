EXECUTABLE = out

CXX = g++

CXXFLAGS = -std=c++14  

SOURCES = $(wildcard *.cpp)

OBJECTS = $(SOURCES:.cpp=.o)

all: $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
	$(CXX) $^ -o $@ $(LDLIBS)

.cpp.o:

-include $(OBJECTS:.o=.d)

.PHONY: clean distclean

clean:
	rm *.o *.d

clear: clean
	rm $(EXECUTABLE)

execute: out

	./out < input.txt 
