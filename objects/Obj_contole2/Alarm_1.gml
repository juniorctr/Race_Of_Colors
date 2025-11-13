var i = event_number;

// Seleciona uma das 4 posições, ciclando entre elas
var x_pos = posicoes[i mod array_length(posicoes)];

// Cria a faixa correspondente
var nova_faixa = instance_create_layer(x_pos, -32, "Instances", faixas[i]);

// Define velocidade
nova_faixa.velocidade = 5;

// Reativa o alarme
alarm[i] = intervalos[i];
