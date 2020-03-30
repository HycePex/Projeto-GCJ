// colors in triangle gradient
draw_set_alpha(0.5);
var col1 = make_colour_rgb(0, 255, 0);
var col2 = c_green; 

//draw transparent stuff


for (var i = 0; i < columns; i++) {
	// set corner vars
    column_corners(i);

	// draw colored triangles to form trapezoids
    draw_triangle_color(x1, y1, x1, y2, x2, y2, col1, col2, col2, false);
    draw_triangle_color(x1, y1, x2, right_y1, x2, y2, col1, col1, col2, false);
}


draw_set_alpha(1);
