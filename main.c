#include<gb/gb.h>
#include<stdio.h>
#include"images/splash_data.c"
#include"images/splash_map.c"
#include"sounds/gbt_player.h"
#include"hero/Character.c"

extern const unsigned char * song_Data[];

struct Character hero;


void main()
{
    set_bkg_data(0, 185, splash_data);
    set_bkg_tiles(0, 0, 20, 18, splash_map);

    disable_interrupts();

    gbt_play(song_Data, 3, 7);
    gbt_loop(1);
    setUpHero();
    set_interrupts(VBL_IFLAG);
    enable_interrupts();

    SHOW_BKG;
    DISPLAY_ON;

    //printf("START OF MY GAME");

    //waitpad(J_START);

    

    while(1)
    {
        wait_vbl_done();

        gbt_update();
    }
}