// Render the rooms and minimap in the game
for (var row = 0; row < gridRows; row++)
{
    for (var col = 0; col < gridCols; col++)
    {
        // Get the room type from the grid
        var roomType = ds_grid_get(grid, row, col);

        // Determine the position of the room on the minimap
        var roomX = minimapX + camera_get_view_x(view_camera[0]) + 150 + col * roomSize;
        var roomY = minimapY + camera_get_view_y(view_camera[0]) + row * roomSize;
// Draw the room on the minimap
    draw_rectangle_color(roomX, roomY, roomX + roomSize, roomY + roomSize, c_black, c_black,c_black,c_black,true);

    // Check if the current room is filled
    if (roomType != -1)
    {
        // Draw filled rooms in a different color
        draw_rectangle_color(roomX, roomY, roomX + roomSize, roomY + roomSize, c_red,c_red,c_red,c_red, true);
    }
	}
}