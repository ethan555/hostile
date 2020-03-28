/// @description Go to entrance

event_inherited();

emitter_left = -2;
emitter_right = 2;

if (instance_exists(entrance)) {
    with (entrance) {
        if (last_room == other.last_room && door_number = other.door_number) {
            other.x = x;
            other.y = y;
        }
    }
}

// Update last room
last_room = room;
