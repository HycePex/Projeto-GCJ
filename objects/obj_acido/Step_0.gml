bodyY += 1




for (var i = 0; i < columns; i++) {
	// the spring logic
    var Displacement = (TargetHeight[i] - Height[i]);
    Speed[i] += (Tension * Displacement) - (Dampening * Speed[i]);
    Height[i] += Speed[i];

	// reset deltas each game step
    leftDelta[i] = 0;
    rightDelta[i] = 0;

	// set corner vars
    column_corners(i);

	// Basic collision detection
	// TODO: collision lines with instances
   if (collision_line(x1, y1, x2, right_y1, obj_pai_fase3, true, false)) {
        Speed[i] -= 10;
    }
	if (collision_line(x1, y1, x2, right_y1, obj_chao_fase3, true, false)) {
        Speed[i] -= 10;
    }
}

// passes to pull on neighbors
for (var j = 0; j < passes; j++) {
    for (var i = 0; i < columns; i++) {
		// left neighbor
        if (i > 0) {
            leftDelta[i] = Spread * (Height[i] - Height[i - 1]);
            Speed[i - 1] += leftDelta[i];
        }
		// right neighbor
        if (i < columns - 1) {
            rightDelta[i] = Spread * (Height[i] - Height[i + 1]);
            Speed[i + 1] += rightDelta[i];
        }
    }

    for (var i = 0; i < columns; i++) {
		// left neighbor
        if (i > 0) {
            Height[i - 1] += leftDelta[i];
        }
		// right neighbor
        if (i < columns - 1) {
            Height[i + 1] += rightDelta[i];
        }
    }
}