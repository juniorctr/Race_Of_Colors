y += velocidade;
if (y > room_height + 32) instance_destroy();

if (y > Obj_chao.y) {
    instance_destroy();
}
