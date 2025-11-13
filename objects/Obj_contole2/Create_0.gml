// Objetos das faixas
faixas = [
    Obj_lineblue,
    Obj_linered,
    Obj_linegreen,
    Obj_lineyellow,
    Obj_lineblue2,
    Obj_linered2,
    Obj_linegreen2,
    Obj_lineyellow2
];

// 4 posições
posicoes = [125, 190, 270, 340];

// Intervalos de tempo diferentes (em frames)
intervalos = [10, 20, 40, 50, 70, 90, 101, 112];

// Inicia os alarms
for (var i = 0; i < array_length(faixas); i++) {
    alarm[i] = intervalos[i];
}
