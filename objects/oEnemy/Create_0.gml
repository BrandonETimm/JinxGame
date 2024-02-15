grid = mp_grid_create(0,0,room_width div 16,room_height div 16,16,16);
path = path_add();
mp_grid_add_instances(grid,oWall,false);
iFrames=15;

hp = 20+2*oJinx.wave;
damage = 10 + oJinx.wave;