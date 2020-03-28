draw_self();


if (machucado == true)
{
    yy += 1;
    draw_text_transformed_colour(x, sprite_height, dano, 5, 5, image_angle, c_green, c_green, c_green, c_yellow, 0.5);
    //draw_text_transformed(x, y - (sprite_height / 2) - yy, dano, 4, 4, image_angle);
    //draw_text(x, y - (sprite_height / 2) - yy, dano)

    if (yy > 20) machucado = false;
}