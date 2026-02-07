faceDump = spr_UndyneDlgSideEye
faceDump2 = spr_UndyneDlgTweaking
voiceDump = snd_txtund
interactAct = function(){
    
    var inst = instance_create_layer(x, y, "Dialogue", mObjDlg)
    with(inst){
        text_lines = [
            "<<voice=snd_txtund>><<face=spr_UndyneDlgSideEye>>....",
			"<<face=spr_UndyneDlgTweaking>>No.",
			"We are not going in there."
        ]
        init_dialogue()
    }    
}
