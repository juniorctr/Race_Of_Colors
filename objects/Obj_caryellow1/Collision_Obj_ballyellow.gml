audio_play_sound(coleta_pontos,0,false);

instance_destroy(other);

if (other.object_index == Obj_ballred) {
    global.score += 10;
    instance_destroy(other);
}

