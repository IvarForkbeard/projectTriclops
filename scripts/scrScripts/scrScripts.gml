//setup screen
window_set_size(640, 640)

//constants
#macro GRIDSIZE 64
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

//return the value at a certain place and time
function gridAt(x, y, z) {
    return global.playgrid[x][y][z]
}

//set the grid at a certain place and time
function gridSet(x, y, z, thing) {
    global.playgrid[x][y][z] = thing
}

//change the grid at a certain place and time
function gridChange(x, y, z, thing) {
    global.playgrid[x][y][z] += thing
}

//draw the array for debugging
function gridDraw () {
    for (i = 0; i < 10; i++){
        for (j = 0; j < 10;  j++){
            draw_text(32 + i * 32, 32 + j * 32, gridAt(i, j, now))
        }
    }
}

//seed the random thing
function seedChoice(x){
    random_set_seed(x)
}

//check if the puzzle is complete
function puzzleComplete() {
    for (i = 0; i < 10; i ++) {
        for (j = 0; j < 10; j ++) {
            var focus = gridAt(i, j, now)
            if focus == entity.target || focus == entity.target + entity.player {
                return false
            }
        }
    }
    return true
}

//
//
//
//
//