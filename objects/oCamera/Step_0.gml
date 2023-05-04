camera_set_view_size(view_camera[0], global.cameraWidth, global.cameraHeight);

ToggleCameraMode();

switch (global.cameraMode)
{
	#region CAMERA - STATIC MODE
	
	case cam_mode.cc_static:
		debug_camera_mode_text = debug_static_mode_text;
		// SetCameraStatic();
	break;
		
	#endregion
	
	#region CAMERA - FOLLOW MODE
	
	case cam_mode.cc_follow:
		debug_camera_mode_text = debug_follow_mode_text;
		SetCameraFollow(oPlayer, 0.2);
	break;
	
	#endregion
	
	#region CAMERA - FOCUS MODE
	
	case cam_mode.cc_focus:
		debug_camera_mode_text = debug_focus_mode_text;
		// SetCameraFocus();
	break;
	
	#endregion
	
	#region CAMERA - SHAKE MODE
	
	case cam_mode.cc_shake:
		debug_camera_mode_text = debug_shake_mode_text;
		// SetCameraShake();
	break;
		
	#endregion
	
	#region CAMERA - DISABLED MODE
	
	case cam_mode.cc_disabled:
		debug_camera_mode_text = debug_disabled_mode_text;
		SetCameraDisabled();
	break;
	
	#endregion
}