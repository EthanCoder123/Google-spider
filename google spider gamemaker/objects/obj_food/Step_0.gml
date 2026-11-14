
if (bounce_timer > 0) {
    var t = bounce_timer / bounce_duration;

    x = lerp(start_x, target_x, t);
    y = lerp(start_y, target_y, t) - sin(t * pi) * bounce_height;

    bounce_timer++;

    if (bounce_timer > bounce_duration) {
        x = target_x;
        y = target_y;
        bounce_timer = 0;
    }
}
