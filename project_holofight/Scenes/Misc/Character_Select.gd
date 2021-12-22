extends Control



export var character_holder_scene:PackedScene
export (Array,int)var chars_per_row=[]
#use this for checking current character you are hovering
#the array is the Y val then the X val
var player_hovering = [[0,0],[0,4]]
func _ready():
	for chars in chars_per_row.size():
		var char_holder = HBoxContainer.new()
		char_holder.add_constant_override('separation',4)
		char_holder.alignment = BoxContainer.ALIGN_CENTER
		for character in chars_per_row[chars]:
			var char_held = character_holder_scene.instance()
			char_holder.add_child(char_held)
			
			#Change for a check user player_hovering
			char_held.get_child(1).connect('focus_entered',self,"player_being_hovered",["test"+str(character)])
		$HSplitContainer/VBoxContainer.add_child(char_holder)

func player_being_hovered(player_id):
	$HSplitContainer/P1.hover_player(player_id)
