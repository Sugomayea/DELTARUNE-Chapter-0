faceDump = spr_UndyneDlgConfused
faceDump2 = spr_UndyneDlgAngry
faceDump3 = spr_PogoreDlgAback
voiceDump = snd_txtund
voiceDump2 = snd_txtasg
interactAct = function(){
    
    var inst = instance_create_layer(x, y, "Dialogue", mObjDlg)
    with(inst){
		dlg_pos_preset = 1
        text_lines = [
            "<<voice=snd_txtund>><<face=spr_UndyneDlgConfused>>Some punk graffiti'd this wall...",
			"<<face=spr_UndyneDlgAngry>>If I see him again, I'll throw him in jail myself!",
			"<<voice=snd_txtasg>><<face=spr_PogoreDlgAback>>Woah there, Undyne. Cool down a little!"
        ]
        init_dialogue()
    }    
}
