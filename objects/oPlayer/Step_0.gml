// 1. Get Input
var _key_left = keyboard_check(vk_left);
var _key_right = keyboard_check(vk_right);

// 2. Horizontal Movement
hsp = (_key_right - _key_left) * 2;

// 3. Gravity
vsp = vsp + 0.1;

// 4. Ground Check & Jumping
if (place_meeting(x, y + 1, oSolid)) 
{
    vsp = 0; // Stop falling
    if (keyboard_check(vk_up)) // Check for jump
    {
        vsp = -4; // Jump!
    }
}

// 5. Apply Movement and Collisions
move_and_collide(hsp, vsp, oSolid);