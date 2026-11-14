
if (global.snake_frames >= max_frames) {
    instance_destroy();
    exit;
}

if (grace_period > 0) {
    grace_period--;
}
