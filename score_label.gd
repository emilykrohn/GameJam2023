extends Label

var time_elapsed := 0.0

func _process(delta):
	time_elapsed += delta
	var seconds_string := "%2d" % [time_elapsed]
	text = "Score: " + str(seconds_string)
