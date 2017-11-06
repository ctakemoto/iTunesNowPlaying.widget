#Displays current iTunes track title, artist and album art on your desktop

options =
  # Easily enable or disable the widget.
  widgetEnable: true

command: "osascript iTunesNowPlaying.widget/iTunesinfo.scpt"

refreshFrequency: '5s'

options : options

render: (output) -> """
	<div id="main">
		#{output}
	</div>	
"""


style: """
	font-weight: 200
	font-size: 25px
	font-family: Helvetica Neue
	left: 30%
	top: 35%

	#main
		color: #FFF

	img
		max-width: 100px
		max-height: 100px
		position: absolute
		left: 0%


	#title
		font-style: italic



"""