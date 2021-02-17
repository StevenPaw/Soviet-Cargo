/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben

// Inherit the parent event
event_inherited();

particle = instance_create_layer(x,y,"EnemiesUnderground",oDirtParticle);
particle.scaler = (1 / (startHealth * global.hp)) * hp;