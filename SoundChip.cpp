#include <stdint.h>
#include <SDL2/SDL_mixer.h>
#include "SoundChip.h"

SoundChip::SoundChip () {
	if (Mix_OpenAudio (22050, AUDIO_S16SYS, 2, 64) != 0) { // A Chunk Size of 64? Yup
		printf ("Failed to Initialize SDL Mixer: %s\n", Mix_GetError());
	}
	
	Mix_AllocateChannels(8);
	
	UFOSound = Mix_LoadWAV("Sounds/ufo_highpitch.wav");
	Shoot = Mix_LoadWAV("Sounds/shoot.wav");
	PlayerDeath = Mix_LoadWAV("Sounds/explosion.wav");
	InvaderDeath = Mix_LoadWAV("Sounds/invaderkilled.wav");
	Fleet1 = Mix_LoadWAV("Sounds/fastinvader1.wav");
	Fleet2 = Mix_LoadWAV("Sounds/fastinvader2.wav");
	Fleet3 = Mix_LoadWAV("Sounds/fastinvader3.wav");
	Fleet4 = Mix_LoadWAV("Sounds/fastinvader4.wav");
	
	if (UFOSound == nullptr)
		printf ("Failed to Load: Sounds/ufo_highpitch.wav\n");
	if (Shoot == nullptr)
		printf ("Failed to Load: Sounds/shoot.wav\n");
	if (PlayerDeath == nullptr)
		printf ("Failed to Load: Sounds/explosion.wav\n");
	if (InvaderDeath == nullptr)
		printf ("Failed to Load: Sounds/invaderkilled.wav\n");
	if (Fleet1 == nullptr)
		printf ("Failed to Load: Sounds/fastinvader1.wav\n");
	if (Fleet2 == nullptr)
		printf ("Failed to Load: Sounds/fastinvader2.wav\n");
	if (Fleet3 == nullptr)
		printf ("Failed to Load: Sounds/fastinvader3.wav\n");
	if (Fleet4 == nullptr)
		printf ("Failed to Load: Sounds/fastinvader4.wav\n");
}

void SoundChip::PlaySound (uint8_t ID) {
	switch (ID) {
		case 0: if (Mix_Playing (ch_UFOSound) == 0) ch_UFOSound = Mix_PlayChannel(0, UFOSound, 0); break;
		case 1: Mix_PlayChannel(1, Shoot, 0); break;
		case 2: Mix_PlayChannel(2, PlayerDeath, 0); break;
		case 3: Mix_PlayChannel(3, InvaderDeath, 0); break;
		case 4: Mix_PlayChannel(4, Fleet1, 0); break;
		case 5: Mix_PlayChannel(5, Fleet2, 0); break;
		case 6: Mix_PlayChannel(6, Fleet3, 0); break;
		case 7: Mix_PlayChannel(7, Fleet4, 0); break;
		default: break;
	}
}