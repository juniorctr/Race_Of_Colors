// === CONTROLE PRINCIPAL ===

// Incrementa o contador de tempo (1 incremento = 1 segundo)
segundos += 1;

// --- BOLAS COLORIDAS ALEATÓRIAS (caem entre 155 e 342, sem sobrepor faixas) ---
var faixa_x = irandom_range(155, 342);
var tipo_bola = choose(Obj_ballblue, Obj_ballred, Obj_ballgreen, Obj_ballyellow);

// Só cria a bola se **não houver faixa** próxima da posição
var colisao_faixa = instance_position(faixa_x, 0, Obj_faixagreen)
                 || instance_position(faixa_x, 0, Obj_faixablue)
                 || instance_position(faixa_x, 0, Obj_faixared)
                 || instance_position(faixa_x, 0, Obj_faixayellow);

if (!colisao_faixa) {
    var b = instance_create_layer(faixa_x, 0, "Instances", tipo_bola);
    b.vspeed = 8;

    // A PARTIR DE 120 SEGUNDOS: adiciona movimento horizontal e rebote
    if (segundos >= 120) {
        b.hspeed = choose(-2, 2);
    }
}

// --- REBOTE DAS BOLAS NAS BORDAS (apenas após 120s) ---
if (segundos >= 120) {
    // Azul
    with (Obj_ballblue) {
        if (x <= 155 || x >= 342) hspeed = -hspeed;
    }
    // Vermelho
    with (Obj_ballred) {
        if (x <= 155 || x >= 342) hspeed = -hspeed;
    }
    // Verde
    with (Obj_ballgreen) {
        if (x <= 155 || x >= 342) hspeed = -hspeed;
    }
    // Amarelo
    with (Obj_ballyellow) {
        if (x <= 155 || x >= 342) hspeed = -hspeed;
    }
}

// --- SEQUÊNCIA FIXA DE FAIXAS (a cada 30 segundos) ---
var sequencia_faixas = [
    Obj_faixagreen,  // 0s
    Obj_faixagreen,  // 30s
    Obj_faixared,    // 60s
    Obj_faixablue,   // 90s
    Obj_faixayellow, // 120s
    Obj_faixared,    // 150s
    Obj_faixagreen,  // 180s
    Obj_faixablue    // 210s (última)
];

// --- CRIA FAIXA A CADA 30 SEGUNDOS ---
if (segundos mod 30 == 0) {
    var indice = (segundos div 30);
    if (indice < array_length(sequencia_faixas)) {
        var faixa_color = sequencia_faixas[indice];

        var f = instance_create_layer(250, -250, "Instances", faixa_color);
        f.vspeed = 8;

        // Ajusta o tamanho da faixa (w=340, h=250)
        f.image_xscale = 340 / sprite_get_width(f.sprite_index);
        f.image_yscale = 250 / sprite_get_height(f.sprite_index);
    }
}

// === FIM DO JOGO AOS 210 SEGUNDOS ===
if (segundos >= 210) {
    show_message("Fim de jogo! Tempo esgotado (210 segundos).");
    game_end();
}

// === REINICIA O ALARME (a cada 1 segundo) ===
alarm[0] = 30;
