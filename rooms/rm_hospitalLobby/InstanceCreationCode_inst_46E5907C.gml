faceDump = spr_PogoreDlgDefault
faceDump2 = spr_PogoreDlgSad
faceDump3 = spr_none
voiceDump = snd_txtasg
voiceDump2 = snd_txt
interactAct = function(){
    
    var inst = instance_create_layer(x, y, "Dialogue", mObjDlg)
    with(inst){
		dlg_pos_preset = 1
        text_lines = [
            "<<run=animateObject(obj_toothMouth, 8)>>If you have an appointment, please wait at the couch.<<run=stopAnimateObject(obj_toothMouth)>>",
			"<<face=spr_PogoreDlgDefault>><<voice=snd_txtasg>>No, no. We're not here for that.",
			"<<face=spr_none>><<voice=snd_txt>><<run=animateObject(obj_toothMouth, 8)>>Oh? Then what are you here for?<<run=stopAnimateObject(obj_toothMouth)>>",
			"<<face=spr_PogoreDlgDefault>><<voice=snd_txtasg>>...<<timer=30>><<face=spr_PogoreDlgSad>>I'm not sure, actually"
        ]
        init_dialogue()
    }    
}
