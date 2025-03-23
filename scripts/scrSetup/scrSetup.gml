//setup screen
window_set_size(640, 960)

//constants
#macro GRIDSIZE 64
#macro GAMENAME "Project Triclops"
enum entity {
    floor = 0,
    wall = 1,
    target = 3,
    player = 7,
    crate = 15
}
global.level = 0
global.playgrid[0][0][0] = entity.wall
global.elapsedTime = 0
global.levelToWin = 32
global.totalSteps = 0

//
//
//
//