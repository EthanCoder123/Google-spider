
if (other.bounce_timer == 0) {
    global.snake_speed += 0.2;
    global.body_up += 10;

    other.start_x = other.x;
    other.start_y = other.y;

    other.target_x = random_range(50, room_width - 50);
    other.target_y = random_range(50, room_height - 50);

    other.bounce_timer = 1;
}
