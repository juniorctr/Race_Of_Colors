
audio_play_sound(som_fundo,0,true);



// Controle geral
global.lives = 3; // vidas do jogador
global.score = 0;
segundos = 0;

// Posições das 4 faixas da pista
faixas = [173, 225, 270, 315];

// Intervalo de tempo para gerar faixas
alarm[0] = 60;

// Limites laterais da pista
faixa_min_x = 157;
faixa_max_x = 340;


// Controle de spawn
alarm[0] = 30;

// Controle de partículas
ps_temp = noone;
p_temp = noone;