facedump = spr_blank
facedump2 = spr_PogoreDlgDefault	
facedump3 = spr_UndyneDlgConfused
facedump3 = spr_AzzyDlgDefault
voicedump = snd_txt	
voicedump2 = snd_txtasg	
voicedump3 = snd_txtund
voicedump4 = snd_txtazzy

interactAct = function(){
	
	function heyKiddo() {
		add_dialogue([
			"<<voice=snd_txtasg>><<face=spr_PogoreDlgDefault>>Hey, kiddos!",
			"<<voice=snd_txt>><<face=spr_none>>(Kris seems to smile.)",
			"<<voice=snd_txtazzy>><<face=spr_AzzyDlgDefault>>Hi, dad!"
		])
	}
	ds_map_add(global.menu_fn_map, "heyKiddo", heyKiddo)
	
	function silence() {
		add_dialogue([
			"<<voice=snd_txtasg>><<face=spr_PogoreDlgDefault>>...",
			"<<voice=snd_txt>><<face=spr_none>>...",
			"<<voice=snd_txtazzy>><<face=spr_AzzyDlgDefault>>...",
			"<<voice=snd_txtund>><<face=spr_UndyneDlgConfused>>You three are weird..."
		])
	}
	ds_map_add(global.menu_fn_map, "silence", silence)
    
    var inst = instance_create_layer(x, y, "Dialogue", mObjDlg)
    with(inst){
		dlg_pos_preset = 1
        text_lines = [
            "...",
			"<<disablestartstar>><<breakspace=false>><<menu=heyKiddo,silence>>Hey, kiddos!_SEP_..."
        ]
        init_dialogue()
    }    
}
