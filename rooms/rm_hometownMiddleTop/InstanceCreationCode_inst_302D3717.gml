faceDump = spr_UndyneDlgHappyYell
voiceDump = snd_txtund
interactAct = function(){
    
    var inst = instance_create_layer(x, y, "Dialogue", mObjDlg)
    with(inst){
        text_lines = [
            "<<voice=snd_txtund>><<face=spr_UndyneDlgHappyYell>>...",
			"<<voice=snd_txtund>><<face=spr_UndyneDlgHappyYell>>No."
        ]
        init_dialogue()
    }    
}
