/// @description

random_set_seed(7)
if !audio_is_playing(theme){
    audio_play_sound(theme, 5, true)
}
object_set_sprite(objCrate, sprSkull)
room_goto(rmGame)