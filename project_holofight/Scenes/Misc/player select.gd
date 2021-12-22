extends Control


export var player_number = 0

var cur_player_count = 0

func _ready():
	for p_name in $p_names.get_children():
		p_name.rect_position.x = (int(player_number==0)*2-1)*(p_name.get_position_in_parent()*48)



func get_players():
	return cur_player_count

func hover_player(player_name):
	$p_names.get_child(cur_player_count).text = player_name
func select_player(_player_name):
	cur_player_count+=1
