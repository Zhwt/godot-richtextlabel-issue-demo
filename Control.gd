extends Control

# The RichTextLabel node
onready var Text = get_node("RichTextLabel")

# Only preserves 100 lines
var maximum_lines = 100


# clean extra lines
func clean_buffer() -> void:
	while Text.get_line_count() > maximum_lines:
		print(Text.get_line_count())
		Text.remove_line(0)


# 
func _on_Set100_pressed():
	var s = ""
	for i in range(100):
		s += "[wave]Hello![/wave]" + str(i) + "\n"
	Text.set_bbcode(s)
	clean_buffer()



func _on_App10_pressed():
	for i in range(10):
		Text.append_bbcode("[shake]Hello![/shake]" + str(i) + "\n")
	clean_buffer()



func _on_GetSet10_pressed():
	for i in range(10):
		Text.set_bbcode(Text.get_bbcode() + "[fade]Hello![/fade]" + str(i) + "\n")
	clean_buffer()



func _on_Clear_pressed():
	Text.clear()
