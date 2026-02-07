faceDump = spr_PogoreDlgDefault
faceDump2 = spr_none
voiceDump = snd_txtasg
voiceDump2 = snd_txt
interactAct = function(){
    
    var inst = instance_create_layer(x, y, "Dialogue", mObjDlg)
	with(inst){
		dlg_pos_preset = 1
		text_lines = [
			"<<run=animateObject(obj_politicsBear, 8)>>I have to admit, I have no clue what I'm doing here.<<run=stopAnimateObject(obj_politicsBear)>>",
			"<<face=spr_PogoreDlgDefault>><<voice=snd_txtasg>>Then could you move out of our way?",
			"<<face=spr_none>><<voice=snd_txt>><<run=animateObject(obj_politicsBear, 8)>>I know that's not what I'm doing here.<<run=stopAnimateObject(obj_politicsBear)>>"
			
		]
		init_dialogue()
	}
}
