#include <stdint.h>
#include <SDL2/SDL.h>
#include <SDL2/SDL_mixer.h>
#ifndef SOUNDCHIP_H
#define SOUNDCHIP_H

class SoundChip {
	public:
		SoundChip ();
		void PlaySound (uint8_t ID);
	
	private:
		Mix_Chunk *UFOSound = nullptr;
		Mix_Chunk *Shoot = nullptr;
		Mix_Chunk *PlayerDeath = nullptr;
		Mix_Chunk *InvaderDeath = nullptr;

		Mix_Chunk *Fleet1 = nullptr;
		Mix_Chunk *Fleet2 = nullptr;
		Mix_Chunk *Fleet3 = nullptr;
		Mix_Chunk *Fleet4 = nullptr;
	
		uint8_t ch_UFOSound;
		uint8_t ch_Shoot;
		uint8_t ch_PlayerDeath;
		uint8_t ch_InvaderDeath;
	
		uint8_t ch_Fleet1;
		uint8_t ch_Fleet2;
		uint8_t ch_Fleet3;
		uint8_t ch_Fleet4;
};

#endif