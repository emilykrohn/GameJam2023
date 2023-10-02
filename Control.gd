extends Control

var seconds = 0
var minutes = 0

var Dseconds = 30
var Dminutes = 1


func _ready():
	$Timer.start()
	reset_timer()

func reset_timer():
	seconds = Dseconds
	minutes = Dminutes

func _on_timer_timeout():
	if seconds == 0:
		if minutes >= 0:
			minutes -= 1
			seconds = 60
	seconds -= 1
	$Label.text = "Unitl Event: " + str(minutes) + ":" +str(seconds)
	
