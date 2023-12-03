curveAsset = MenuLogoAnim;
curvePos = 0;
curveSpeed = 0.005 ;

if (!audio_is_playing(ms_level))
{
	audio_stop_all();
	audio_play_sound(ms_main_menu, 1, 1);
}