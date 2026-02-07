faceDump = spr_PogoreDlgSad
faceDump = spr_none
voiceDump = snd_txtasg
voiceDump2 = snd_txt
interactAct = function(){
    
    var inst = instance_create_layer(x, y, "Dialogue", mObjDlg)
    with(inst){
		dlg_pos_preset = 1
        text_lines = [
            "<<run=animateObject(obj_townHallAttendant, 6)>>I'm sorry, sir. I can't allow you past the bear.<<run=stopAnimateObject(obj_townHallAttendant)>>",
			"<<face=spr_PogoreDlgSad>><<voice=snd_txtasg>>But why not? It's just to congratulate Carol for her new role.",
			"<<face=spr_none>><<voice=snd_txt>><<run=animateObject(obj_townHallAttendant, 6)>>Mrs. Holiday is not accepting any visits at this time.<<run=stopAnimateObject(obj_townHallAttendant)>>"
			
        ]
        init_dialogue()
    }    
}
