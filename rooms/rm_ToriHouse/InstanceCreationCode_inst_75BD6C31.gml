faceDump = spr_BlookDlg
faceDump2 = spr_AsgoreDlgDefault
faceDump5 = spr_AsgoreDlgSad
faceDump3 = spr_UndyneDlgHappyYell
faceDump4 = spr_UndyneDlgDefault
voiceDump = snd_txtasg
voiceDump2 = snd_txtnap
voiceDump3 = snd_txtund
interactAct = function(){
    
    var inst = instance_create_layer(x, y, "Dialogue", mObjDlg)
    with(inst){
        text_lines = [
            "<<voice=snd_txtnap>><<face=spr_BlookDlg>>oh. hey, asgore.",
			"<<voice=snd_txtnap>><<face=spr_BlookDlg>>are there any missions for us today?",
			"<<voice=snd_txtnap>><<face=spr_BlookDlg>>check out my new song: <<effect=bounce&effect_speed=0.25>>oooooooooooooo<<effect=none>>",
			"<<voice=snd_txtnap>><<face=spr_BlookDlg>>did you like it?",
			"<<voice=snd_txtasg>><<face=spr_AsgoreDlgDefault>>It was great, Napst.",
			"<<voice=snd_txtund>><<face=spr_UndyneDlgDefault>>Hey, that was good, Napst!",
			"<<voice=snd_txtund>><<face=spr_UndyneDlgHappyYell>>But I bet Chief Fluffybuns could do better!",
			"<<voice=snd_txtasg>><<face=spr_AsgoreDlgSad>>Is that going to be my name from now on?",
			"<<voice=snd_txtund>><<face=spr_UndyneDlgDefault>>Yes.<<timer=30>> Yes, it will be."
        ]
        init_dialogue()
    }    
}
