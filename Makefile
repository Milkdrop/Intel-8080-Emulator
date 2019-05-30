deps = main.cpp CPU.cpp MMU.cpp Display.cpp SoundChip.cpp

main: $(deps)
	g++ --std=c++14 -ggdb -g3 -Wall -pedantic -O2 $(deps) -o main -lSDL2 -lSDL2_mixer