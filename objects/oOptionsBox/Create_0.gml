xToStay = room_width / 2 - 450;
ySlider1 = y - 100;
ySlider2 = y + 100;
active = false;

volumeSlider = instance_create_layer(x - sprite_width / 2 + 20, ySlider1,"Options1",oSliderVolumeOptions);
effectSlider = instance_create_layer(x - sprite_width / 2 + 20, ySlider2,"Options1",oSliderEffectsOptions);