var finalVol = global.musicVolume * global.masterVolume

//play target song
if (songAsset != targetSongAsset) {	
	//tell the old song to kys
	if audio_is_playing(songInstance) {
		array_push(fadeOutInstances, songInstance)
		//add song instance's starting vol
		array_push(fadeOutInstanceVolume, fadeInInstVol)
		//add fadeout instance frames
		array_push(fadeOutInstanceTime, endFadeOutTime)
		
		//reset the song instance and asset vars
		songInstance = noone
		songAsset = noone
	}
	
	//play the song, if old song has faded
	if (array_length(fadeOutInstances) == 0) {
		if (audio_exists(targetSongAsset)) {
			//play song and store in var
			songInstance = audio_play_sound(targetSongAsset, 4, true, 1, 0, pitch)
	
			//start song vol at 0
			audio_sound_gain(songInstance, 0, 0)
			fadeInInstVol = 0
		}
	
		//set songasset to target asset
		songAsset = targetSongAsset
	}
}

//volume control

	//main song vol
	if (audio_is_playing(songInstance)) {
		//fade song in
		if (startFadeInTime > 0) {
			if (fadeInInstVol < 1) {
				fadeInInstVol += 1/startFadeInTime
			} else {
				fadeInInstVol = 1
			}
		//immediately start song if fade in is 0 frames
		} else {
			fadeInInstVol = 1
		}
	
		//set gain
		audio_sound_gain(songInstance, fadeInInstVol * finalVol, 0)
	}
	
	//fading songs out
	for (var i = 0; i < array_length(fadeOutInstances); i++) {
		//fade volume
		if (fadeOutInstanceTime[i] > 0) {
			if (fadeOutInstanceVolume[i] > 0) {
				fadeOutInstanceVolume[i] -= 1/fadeOutInstanceTime[i]
			}
		//immediately cut vol to 0 otherwise
		} else {
			fadeOutInstanceVolume[i] = 0
		}
		
		//set gain
		audio_sound_gain(fadeOutInstances[i], fadeOutInstanceVolume[i] * finalVol, 0)
		
		//stop the song when vol at 0 and remove from ALL arrays
		if (fadeOutInstanceVolume[i] <= 0) {
			//stop song
			if (audio_is_playing(fadeOutInstances[i])) {
				audio_stop_sound(fadeOutInstances[i])
			}
			//remove from arrays
			array_delete(fadeOutInstances, i, 1)
			array_delete(fadeOutInstanceVolume, i, 1)
			array_delete(fadeOutInstanceTime, i, 1)
			//set the loop back 1
			i--;
		}
	}