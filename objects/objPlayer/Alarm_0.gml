/// @description
//check to see if player has finished
if global.level >= global.levelToWin {
    instance_create_layer(320, 700, "Text", objWinner)
}
else {
    room_restart()
}