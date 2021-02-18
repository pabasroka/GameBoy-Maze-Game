mod2gbt ./sounds/dwa.mod song -c 4

C:\gbdk\bin\lcc -Wa-l -Wl-m -Wl-j -DUSE_SFR_FOR_REG -c -o main.o main.c
C:\gbdk\bin\lcc -Wa-l -Wl-m -Wl-j -DUSE_SFR_FOR_REG -c -o ./sounds/output.o ./sounds/output.c
C:\gbdk\bin\lcc -Wa-l -Wl-m -Wl-j -DUSE_SFR_FOR_REG -c -o ./sounds/gbt_player.o ./sounds/gbt_player.s
C:\gbdk\bin\lcc -Wa-l -Wl-m -Wl-j -DUSE_SFR_FOR_REG -c -o ./sounds/gbt_player_bank1.o ./sounds/gbt_player_bank1.s

C:\gbdk\bin\lcc -Wa-l -Wl-m -Wl-j -DUSE_SFR_FOR_REG -Wl-yt1 -Wl-yo4 -Wl-ya0 -o SuperSimpleMaze.gb main.o ./sounds/output.o ./sounds/gbt_player.o ./sounds/gbt_player_bank1.o

del *.o *.lst
del music.map
del music.sym
del main.sym
del main.map

pause