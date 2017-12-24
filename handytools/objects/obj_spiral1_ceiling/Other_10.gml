matrix_chain_begin();
matrix_chain_rotate_x( -90 );
matrix_chain_rotate_z( image_angle );
matrix_chain_scale( 1, 1, -1 );
matrix_chain_translate( x, y, z );
if ( global.game_room != 6 ) matrix_chain_translate( 0, 0, -global.game_swell );
matrix_chain_end( matrix_world );
vertex_submit( obj_model( "spiral1" ), pr_trianglelist, sprite_get_texture( spr_tex_spiral, 0 ) );
matrix_reset_world();