/// @description

random_set_seed(6)
if !audio_is_playing(theme){
    audio_play_sound(theme, 5, true)
}
object_set_sprite(objCrate, sprPoop)
room_goto(rmGame)