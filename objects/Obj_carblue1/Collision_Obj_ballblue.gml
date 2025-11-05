audio_play_sound(coleta_pontos,0,false);

instance_destroy(other);

// Colisão com bola azul (acerto)
if (other.object_index == Obj_ballblue) {
    global.score += 10; // pontua
    instance_destroy(other);
}

