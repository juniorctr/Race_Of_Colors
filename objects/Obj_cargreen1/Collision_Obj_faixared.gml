instance_create_layer(x, y, "Instances", Obj_carred1);
instance_destroy();

if (other.object_index == Obj_faixagreen 
 || other.object_index == Obj_faixablue
 || other.object_index == Obj_faixared
 || other.object_index == Obj_faixayellow) {
     
    instance_destroy(other);
}
