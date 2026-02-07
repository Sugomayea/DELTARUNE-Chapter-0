faceDump = spr_UndyneDlgConfused
faceDump2 = spr_PogoreDlgDefault
faceDump3 = spr_BlookDlg
voiceDump = snd_txtund
voiceDump2 = snd_txtasg
voiceDump3 = snd_txtnap
interactAct = function(){
    
    var inst = instance_create_layer(x, y, "Dialogue", mObjDlg)
    with(inst){
		dlg_pos_preset = 1
        text_lines = [
            "<<voice=snd_txtund>><<face=spr_UndyneDlgConfused>>Chief, why'd we put this up, again?",
			"<<voice=snd_txtasg>><<face=spr_PogoreDlgDefault>>To stop all the little kids from escaping the town.",
			"<<voice=snd_txtnap>><<face=spr_BlookDlg>>those kids take forever to catch..."
        ]
        init_dialogue()
    }    
}
