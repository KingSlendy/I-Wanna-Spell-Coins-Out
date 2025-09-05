total_w = 800;
total_h = 608;
slide_n = 3;
slide_w = floor(total_w / slide_n);
slide_h = floor(total_h / slide_n);
grid = ds_grid_create(slide_n, slide_n);
ds_grid_clear(grid, false);
changing = false;
cells = [noone, noone];