deps = main.cpp MMU.cpp CPU.cpp Display.cpp
main: $(deps)
	g++ -Wall -pedantic -O2 $(deps) -o main -lSDL2

