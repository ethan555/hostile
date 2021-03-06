/// Macros
#macro VIEW_STANDARD_WIDTH 800
#macro VIEW_STANDARD_HEIGHT 450
#macro VIEW_SUPER_WIDTH 800
#macro VIEW_SUPER_HEIGHT 450

#macro ZOOM_IN .5
#macro ZOOM_OUT 2
#macro ZOOM_SPD .1

#macro IDLE 0
#macro RUN 1
#macro SKID 2
#macro DODGE 3
#macro SWING 4
#macro BLOCK 5
#macro PARRY 6
#macro CROUCH 7
#macro JUMP 8
#macro HURT 9
#macro THROWN 10
#macro SWING_JUMP 11
#macro STAND 12
#macro DIE 13
#macro LAND 14
#macro SUICIDE 15
#macro SUICIDE_JUMP 16
#macro SWING_CROUCH 17
#macro SWING_BACK 18
#macro BLOCK_RELEASE 19
#macro PARRY_BACK 20
#macro ENEMY_ATTACK_1 21
#macro ENEMY_ATTACK_2 22
#macro ENEMY_ATTACK_3 23
#macro CHARGE 23
#macro RAISE 24

#macro SWORD_NONE -1
#macro SWORD_SWING 0
#macro SWORD_SWING_BACK 1
#macro SWORD_SWING_CROUCH 2
#macro SWORD_BLOCK 3
#macro SWORD_PARRY 4
#macro SWORD_PARRY_BACK 5
#macro SWORD_SUICIDE 6

#macro GRAVITY .5
#macro TERMINAL 50
#macro LANDSPEED 15

#macro PLAYER_HEALTH 10

#macro WALKSPEED 4.5
#macro DODGESPEED 14
#macro DODGE_ENDSPEED 10// 9
#macro JUMPSPEED 10
#macro WALLJUMPYSPEED 6
#macro WALLJUMPXSPEED 7
#macro ATTACKSPEED 7
#macro ATTACK_BACKSPEED 7
#macro ATTACK_DODGESPEED 12
#macro BACKJUMPSPEED 3

#macro HURT_SPEED 1

#macro LAST_PRESSED_TIME 12

#macro ATTACK_HIT_INDEX 2//1
#macro ATTACK_CHAIN_INDEX 4.5
#macro ATTACK_IMAGE_SPEED .8
#macro ATTACK_IMAGE_SPEED_AFTER 1

#macro ENEMY_ATTACK_NUMBER 3

#macro BLOCK_IMAGE_SPEED .5
#macro BLOCK_RELEASE_IMAGE_SPEED .5
#macro PARRY_INDEX 0
#macro PARRY_IMAGE_SPEED 1
#macro PARRIED_IMAGE_SPEED .5

#macro PARRIED_SPEED_LIGHT 7.5
#macro PARRIED_SPEED_HEAVY 10

#macro FOREGROUND_DEPTH3 -3000
#macro FOREGROUND_DEPTH2 -2000
#macro FOREGROUND_DEPTH1 -1000
#macro PLAYER_DEPTH 0
#macro ENEMY_DEPTH 10
#macro ROCK_DEPTH 100
#macro BACKGROUND_DEPTH1 1000
#macro BACKGROUND_DEPTH2 2000
#macro BACKGROUND_DEPTH3 3000

#macro D_STOP "s"
#macro D_CONTINUE_AT_END "c"
#macro D_PAUSE_SHORT ","
#macro D_PAUSE_MEDIUM "."
#macro D_PAUSE_LONG "/"
#macro D_PAUSE_SHORT_TIME seconds_to_frames(.1)
#macro D_PAUSE_MEDIUM_TIME seconds_to_frames(.2)
#macro D_PAUSE_LONG_TIME seconds_to_frames(.3)
#macro D_FAST "3"
#macro D_MEDIUM "2"
#macro D_SLOW "1"

#macro D_SLOW_SPEED .25
#macro D_MEDIUM_SPEED .5
#macro D_FAST_SPEED 1

#macro TEXT_MARGIN 8
#macro TEXT_SIZE 1

#macro ENEMY_MOVE_TIMER seconds_to_frames(.5)
#macro ENEMY_PARRY_DISTANCE 64
#macro ENEMY_TARGET_DISTANCE 48
#macro TARGET_ATTACK_DISTANCE 32
