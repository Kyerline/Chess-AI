CC=g++
CFLAGS=-c -g -O0 -std=c++11 -Wall
LDFLAGS= -lSDL2 -lSDL2_image
SOURCES=chess.cpp piece.cpp pawn.cpp knight.cpp rook.cpp bishop.cpp queen.cpp king.cpp SDL_Manager.cpp ai.cpp
OBJECTS=$(SOURCES:.cpp=.o)
EXECUTABLE=run

all: $(SOURCES) $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS) 
	$(CC) $(LDFLAGS) $(OBJECTS) -o $@

.cpp.o:
	$(CC) $(CFLAGS) $< -o $@

clean:
	rm -f core $(EXECUTABLE) $(OBJECTS)
