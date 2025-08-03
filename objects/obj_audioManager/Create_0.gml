//info for the song
songInstance = noone
songAsset = noone
targetSongAsset = noone
endFadeOutTime = 0 //frames to fade out
startFadeInTime = 0 //frames to fade in
fadeInInstVol = 1
pitch = 1

//global volume defaults
global.musicVolume = 1
global.sfxVolume = 1
global.masterVolume = 1

//for fading music out and stopping songs that are no longer playing
fadeOutInstances = array_create(0) //the audio instances to fade out
fadeOutInstanceVolume = array_create(0) //the volume of each audio instance
fadeOutInstanceTime = array_create(0) //how fast the fadeout should happen