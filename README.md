# Intel-8080-Emulator
A Fully functional Intel 8080 emulator written in C++ and SDL2, that can run the classic Space Invaders Arcade Game, and also some COM Programs of the time.

<p align="center">
  <img align="center" src="https://github.com/MoonfireSeco/Intel-8080-Emulator/raw/master/Pictures/SpaceInvaders.png">
</p>

## To Run:
- **A program:** `./main -p Demos/PROGNAME.COM`
- **A game:** `./main -g Demos/invadersfull` (give full assembly that will be copied at 0x0000)
In case you don't want any sound, make sure to pass an additional `--no-sound` parameter at the end.

Space Invaders Built-In Controls:
- **ENTER:** `Insert Coin`
- **1:** `Start 1 Player Game`
- **2:** `Start 2 Players Game`
- **A or Left Arrow:** `Move Left (P1 and P2)`
- **D or Right Arrow:** `Move Right (P1 and P2)`
- **Space:** `Shoot (P1 and P2)`
- **Delete:** `Tilt Machine`

## Tests Passed:

The emulator currently passes all CPU tester COMs that are at my disposal:

<b>8080PRE.COM</b>
<br>
<img src="https://github.com/MoonfireSeco/Intel-8080-Emulator/raw/master/Pictures/8080PRE.png">

<b>TST8080.COM</b>
<br>
<img src="https://github.com/MoonfireSeco/Intel-8080-Emulator/raw/master/Pictures/TST8080.png">

<b>CPUTEST.COM</b>
<br>
<img src="https://github.com/MoonfireSeco/Intel-8080-Emulator/raw/master/Pictures/CPUTEST.png">

<b>8080EXM.COM</b>
<br>
<img src="https://github.com/MoonfireSeco/Intel-8080-Emulator/raw/master/Pictures/8080EXM.png">
