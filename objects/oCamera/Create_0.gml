#region Debug
debug_camera_mode_text = "";
debug_follow_mode_text = "cc_follow";
debug_focus_mode_text = "cc_focus";
debug_shake_mode_text = "cc_shake";
debug_static_mode_text = "cc_static";
debug_disabled_mode_text = "cc_disabled";

ToggleCameraMode = function()
{
	if (keyboard_check_pressed(ord("0")))
	{
		global.cameraMode = cam_mode.cc_disabled;
	}
	
	if (keyboard_check_pressed(ord("1")))
	{
		global.cameraMode = cam_mode.cc_static;
	}	
	
	if (keyboard_check_pressed(ord("2")))
	{
		global.cameraMode = cam_mode.cc_follow;
	}	
	
	if (keyboard_check_pressed(ord("3")))
	{
		global.cameraMode = cam_mode.cc_shake;
	}	
	
	if (keyboard_check_pressed(ord("4")))
	{
		global.cameraMode = cam_mode.cc_focus;
	}
}

#endregion

enum cam_mode
{
	cc_static,
	cc_follow,
	cc_shake,
	cc_focus,
	cc_disabled
}

global.targetX = 0;
global.targetY = 0;

global.cameraX = 0;
global.cameraY = 0;
global.cameraWidth = 320;
global.cameraHeight = 180;
global.cameraFollowTarget = noone;
global.cameraFollowSpeed = 0;
global.cameraMode = cam_mode.cc_disabled;

global.windowScale = 4;

forceDisable = false;

surface_resize(application_surface, global.cameraWidth * global.windowScale, global.cameraHeight * global.windowScale);
window_set_size(global.cameraWidth * global.windowScale, global.cameraHeight * global.windowScale);

display_set_gui_size(640, 360);

/// @method SetCameraFollow(followTarget, followSpeed)
SetCameraFollow = function(_followTarget, _followSpeed)
{
	if (instance_exists(_followTarget))
	{
		global.cameraFollowTarget = _followTarget;
		global.cameraFollowSpeed = _followSpeed;
		
		global.targetX = global.cameraFollowTarget.x - (global.cameraWidth * 0.5);
		global.targetY = global.cameraFollowTarget.y - (global.cameraHeight * 0.5);
	
		global.targetX = clamp(global.targetX, 0, room_width - global.cameraWidth);
		global.targetY = clamp(global.targetY, 0, room_height - global.cameraHeight);
	
		global.cameraX = lerp(global.cameraX, global.targetX, global.cameraFollowSpeed);
		global.cameraY = lerp(global.cameraY, global.targetY, global.cameraFollowSpeed);
		
		camera_set_view_pos(view_camera[0], global.cameraX, global.cameraY);
	}
	else
	{
		global.cameraMode = cam_mode.cc_disabled;
		show_debug_message("Erro: Camera sem target!");
	}	
}

SetCameraDisabled = function()
{
	if (instance_exists(oPlayer) && !forceDisable)
	{
		global.cameraMode = cam_mode.cc_follow;
	}	
}
