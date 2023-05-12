extends Control

var dialog = [
	'what a nice day to make vips',
	'i hope n can shut the fuck up and leave me alone',
	'v i need help doing my fucking taxes',
	'shut the fcuk n',
	'i cant even read v',
	'THEN FUCKING LEARN YOU FUCKING DUMBASS',
	'I DONT FUCKING CARE ANYMORE JUST GO TO FUCKING SCHOOL AND FUCKING LEARN',
	'AND LET ME MAKE FUCKIG VIPS IN PEACE',
	'IF YOU EVER ASK ME ONE MORE TIME FOR HELP THAT A LITERAL FIRST GRADER CAN DO',
	'THEN I WILL END THIS CHANNEL',
	'teh end'
]
var dialog_index = 0

var saidby = [
	'V:',
	'V:',
	'N:',
	'V:',
	'N:',
	'V:',
	'V:',
	'V:',
	'V:',
	'V:',
	'the writer:'
]
var saidby_index = 0
var next_thing = true

func _ready():
	load_dialog()


		
		
func _process(delta):
	if next_thing:
		if Input.is_action_pressed("ui_accept"):
				load_dialog()
	
func load_dialog():
	if dialog_index < dialog.size():
		$RichTextLabel.text = dialog[dialog_index]
		$RichTextLabel2.text = saidby[saidby_index]
		$Timer.start()
		next_thing = false
	dialog_index += 1
	saidby_index += 1
	if dialog_index > 5:
		$"../VavrS+".visible = false
		$"../Vavr".visible = true
		


func _on_timer_timeout():
	next_thing = true
