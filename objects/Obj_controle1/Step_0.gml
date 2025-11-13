// --- Segurança: garante variáveis globais ---
if (!variable_global_exists("lives")) global.lives = 5;
if (!variable_global_exists("score")) global.score = 0;

// --- Controle de piscagem ---
if (instance_exists(Obj_caryellow1)) {
    with (Obj_caryellow1) {
        if (is_blinking) {
            blink_timer -= 1;
            if (blink_timer mod 5 == 0) visible = !visible;
            if (blink_timer <= 0) {
                is_blinking = false;
                visible = true;
            }
        }
    }
}

// --- CONDIÇÃO DE DERROTA ---
	if (global.lives <= 0) {
	    show_debug_message(">> GAME OVER: vidas acabaram!");
	    audio_stop_all();
	    room_goto(room_perdeu);
	}

// --- CONDIÇÃO DE FASE ---
if (global.score >= 200) {
    show_debug_message(">> Indo pra FASE2!");
    room_goto(Fase2);
}
