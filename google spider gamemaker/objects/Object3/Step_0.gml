
speed = global.snake_speed;

if (is_horiz) {
    if (keyboard_check_pressed(vk_up)) direction = 90;
    if (keyboard_check_pressed(vk_down)) direction = 270;
}
else {
    if (keyboard_check_pressed(vk_left)) direction = 180;
    if (keyboard_check_pressed(vk_right)) direction = 0;
}

is_horiz = (direction == 0 || direction == 180);
is_vert = !is_horiz;
image_angle = direction;

spawn_timer++;

if (spawn_timer >= spawn_delay) {
    spawn_timer = 0;
    var body = instance_create_layer(x, y, "Instances", obj_body);
    body.max_frames = global.snake_frames + global.body_up;
}

if (x < 0 || x > room_width || y < 0 || y > room_height) {
    room_restart();
}
