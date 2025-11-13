audio_play_sound(perda_pontos,0,false);

if (!is_blinking) { // Só perde vida se não estiver piscando
    global.lives -= 1;

    // Inicia o efeito de piscar
    is_blinking = true;
    blink_timer = 60; // Tempo em frames (60 = 1 segundo)

    // Destroi a bola
    instance_destroy(other);
}

if (other.object_index == Obj_ballred) {
    global.score += 10;
    instance_destroy(other);
}
if (other.object_index == Obj_ballblue
 || other.object_index == Obj_ballgreen
 || other.object_index == Obj_ballyellow) {
    global.score -= 5;
    instance_destroy(other);
}
// Se vidas acabarem → Game Over
if (global.lives <= 0) {
        audio_play_sound(snd_gameover, 1, false);
        show_message("GAME OVER! Suas vidas acabaram.");
         audio_stop_all();
    room_goto(room_perdeu);
}
