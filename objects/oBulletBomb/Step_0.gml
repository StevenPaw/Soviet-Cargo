/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben

// Inherit the parent event
event_inherited();

if (distance_to_point(targetX, targetY) <= 5) {
    instance_create_layer(x, y, "GUI1", oExplosion);
    instance_destroy();
}