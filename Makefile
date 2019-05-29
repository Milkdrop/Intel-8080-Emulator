deps = main.cpp CPU.cpp MMU.cpp Display.cpp

main: $(deps)
	g++ -ggdb -g3 -Wall -pedantic -O2 $(deps) -o main -lSDL2