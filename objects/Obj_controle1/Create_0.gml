// inicializa uma única vez
if (!variable_global_exists("lives")) {
    global.lives = 5;
}

global.score = 0;
global.tempo = 60;       // se for cronômetro decrescente (ou 0 se for crescente)
segundos = 0;

// Constantes da pista
faixas = [140, 210, 285, 355];
faixa_min_x = 105;
faixa_max_x = 390;

// Alarm e partículas
alarm[0] = 30;
ps_temp = noone;
p_temp = noone;

// Som de fundo (opcional)
audio_play_sound(som_fundo, 1, true);
