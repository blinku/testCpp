CC=g++
CFLAGS=-c -Wall
LDFLAGS=
SOURCES=test.cpp 
OBJECTS=$(SOURCES:.cpp=.o)
EXECUTABLE=testCpp

all: $(SOURCES) $(EXECUTABLE)
	
$(EXECUTABLE): $(OBJECTS) 
	$(CC) $(LDFLAGS) $(OBJECTS) -o $@

.cpp.o:
	$(CC) $(CFLAGS) $< -o $@

clean:
	rm -rf $(OBJECTS) $(EXECUTABLE)