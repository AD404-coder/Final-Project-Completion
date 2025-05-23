//Get Player Input
keyLeft = keyboard_check(vk_left);
keyRight = keyboard_check(vk_right);
keyUp = keyboard_check(vk_up);
keyDown = keyboard_check(vk_down);
keyActivate = keyboard_check_pressed(vk_space);  
keyAttack = keyboard_check_pressed(vk_shift); 
keyItem = keyboard_check_pressed(vk_control); 

inputDirection = point_direction(0,0,keyRight - keyLeft,keyDown - keyUp);
inputMagnitude = (keyRight - keyLeft != 0) || (keyDown - keyUp != 0);

//Movement
hspeed = lengthdir_x(inputMagnitude * speedWalk,inputDirection);
vspeed = lengthdir_y(inputMagnitude * speedWalk,inputDirection);

x += hspeed;
y += vspeed;

//Update Sprite Index
var _oldSprite = sprite_index;
if (inputMagnitude != 0)
{
	direction = inputDirection
	sprite_index = spriteRun;
}else sprite_index = spriteIdle;
if (_oldSprite != sprite_index) localFrame = 0;

// Update Image Index
PlayerAnimateSprite();




