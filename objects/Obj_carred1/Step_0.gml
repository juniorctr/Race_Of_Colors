if (is_blinking) {
    blink_timer -= 1;

    // Alterna visibilidade a cada 5 frames
    if (blink_timer mod 5 == 0) {
        visible = !visible;
    }

    // Quando o tempo acaba, para o piscar
    if (blink_timer <= 0) {
        is_blinking = false;
        visible = true;
    }
}
