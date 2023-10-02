extends Label

func _ready():
	hide()

func _process(delta):
	if Global.game_over:
		show()
		text = "Game Over!\nScore: %s" % str(Global.score)
