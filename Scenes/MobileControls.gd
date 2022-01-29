extends CanvasLayer

func _ready():
	if JavaScript.eval(
		"function is_touch_enabled() {\n" +
		"	return ( 'ontouchstart' in window ) ||\n" +
		"			( navigator.maxTouchPoints > 0 ) ||\n" +
		"			( navigator.msMaxTouchPoints > 0 );\n" +
		"}"
	) == true:
		print("Mobile platform")
	else:
		print("Desktop platform")
		$Left.hide()
		$Right.hide()
