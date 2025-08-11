instance_create_layer(x, y, layer, objBloodEmitter);
audio_play_sound(sndDeath, 0, false);
instance_destroy(other);
instance_destroy();