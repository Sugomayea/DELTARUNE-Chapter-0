function scr_musicFunc(song, fadeOutCurrentSongFrames = 0, fadeIn = 0, songPitch = 1){
	//song = set it to and song including "noone" to stop/fade out current
	//fadeOutCurrentSongFrames = time in frames (of course) the current song (if playing) will take to fade out
	//fadeIn = time in frames the target song (if not "noone") will take to fade in
	
	with(obj_audioManager)
	{
		targetSongAsset = song
		endFadeOutTime = fadeOutCurrentSongFrames
		startFadeInTime = fadeIn
		pitch = songPitch
	}
}