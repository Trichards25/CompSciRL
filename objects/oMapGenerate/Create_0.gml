/*
mapMax = 10;
global.map = ds_grid_create(mapMax, mapMax);

for(i = 0; i < mapMax; i++){
	for (j = 0; j < mapMax; j++){
		global.map[i, j] = sRooms(false, false, false, false, false, i,j,sprEmptyRoom, false);
	}
}
lastX = mapMax/2;
lastY = mapMax/2;
global.map[lastX,mapMax/2] = sRooms(true, false, false, false, false, mapMax/2, mapMax/2, sprStartRoom, true);

for(i = 0; i < mapMax; i++){
	valids = sValidCheck(map, lastX, lastY);
	connects = irandom_range(1,4);
		for(J = 0; J < connects; j++){
			spot = irandom_range(0,3);
			if valids[spot] {
				if spot = 0 {
					lastY -= 1;
				}
				if spot = 1 {
					lastX += 1;
				}
				if spot = 2 {
					lastY -= 1;
				}
				if spot = 3 {
					lastX -= 1;
				}
				valids[spot] = false;
				map[lastX,lastY] = sRooms(true, false, false, false, false, lastX, lastY, sprRoom, false);
			}
		}
		}
		*/
		
// Define the size of the grid
 gridRows = 5;
 gridCols = 5;

// Define the size and position of the minimap
 minimapX = 10;
 minimapY = 10;
 minimapSize = 100;
 roomSize = minimapSize / gridCols;

// Define the number of filled rooms
global.filledRooms = 10;

// Create a 2D array to store the room types
grid = ds_grid_create(gridRows, gridCols);

// Generate the map
global.branches = 0;

// Set the starting room
var startRow = irandom_range(0, gridRows - 1);
var startCol = irandom_range(0, gridCols - 1);
var startRoomType = rRandomRoom1;
ds_grid_set(grid, startRow, startCol, startRoomType);

// Recursive function to generate branches
function generateBranch(grid, row, col, roomType, gridRows, gridCols)
{
    if (global.branches >= global.filledRooms)
        return;

    // Array to hold neighboring cells
    var neighbors = [];

    // Check left neighbor
    if (col > 0 && ds_grid_get(grid, row, col - 1) == -1)
        neighbors[0] = [row, col - 1];

    // Check right neighbor
    if (col < gridCols - 1 && ds_grid_get(grid, row, col + 1) == -1)
        neighbors[1] = [row, col + 1];

    // Check top neighbor
    if (row > 0 && ds_grid_get(grid, row - 1, col) == -1)
        neighbors[2] = [row - 1, col];

    // Check bottom neighbor
    if (row < gridRows - 1 && ds_grid_get(grid, row + 1, col) == -1)
        neighbors[3] = [row + 1, col];

    if (array_length_1d(neighbors) > 0)
    {
        var randomNeighbor = neighbors[| irandom(array_length_1d(neighbors) - 1)];
        var newRow = randomNeighbor[0];
        var newCol = randomNeighbor[1];
            // Randomly select a room type
        var newRoomType = choose(rRandomRoom1);
        

        // Set the room type in the grid
        ds_grid_set(grid, newRow, newCol, newRoomType);

        global.branches++;

        // Recursively generate branches from the new room
        generateBranch(grid, newRow, newCol, newRoomType, gridRows, gridCols);
    }
}

// Start generating branches from the starting room
generateBranch(grid, startRow, startCol, startRoomType, gridRows, gridCols);

