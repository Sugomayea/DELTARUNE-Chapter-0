faceDump = spr_AsgoreDlgDefault
faceDump2 = spr_AsgoreDlgSad
faceDump3 = spr_none
voiceDump = snd_txtasg
voiceDump2 = vc_text
interactAct = function(){
    
    var inst = instance_create_layer(x, y, "Dialogue", mObjDlg)
    with(inst){
		dlg_pos_preset = 1
        text_lines = [
            "<<run=scr_animateObject(obj_toothMouth, 8)>>If you have an appointment, please wait at the couch.<<run=scr_stopAnimateObject(obj_toothMouth)>>",
			"<<face=spr_AsgoreDlgDefault>><<voice=snd_txtasg>>No, no. We're not here for that.",
			"<<face=spr_none>><<voice=vc_text>><<run=scr_animateObject(obj_toothMouth, 8)>>Oh? Then what are you here for?<<run=scr_stopAnimateObject(obj_toothMouth)>>",
			"<<face=spr_AsgoreDlgDefault>><<voice=snd_txtasg>>...<<timer=30>><<face=spr_AsgoreDlgSad>>I'm not sure, actually"
        ]
        init_dialogue()
    }    
}
