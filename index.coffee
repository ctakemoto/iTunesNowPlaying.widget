#Displays current iTunes track title, artist and album art on your desktop

options =
  widgetEnable: true			#true to enable the widget, false to disable
  vPosition: 'center'			#verticle position of the bar, options: 'top', 'center', 'bottom'
  hPosition: 'center'			#horizontal position of the bar, options: 'left', 'center'
  theme: 'white'				#theme options: 'white', 'black'



command: "osascript iTunesNowPlaying.widget/iTunesinfo.scpt"

refreshFrequency: '2s'

options : options

render: (output) -> """
	<div id="main">
		#{output}
	</div>	
"""

update: (output, domEl) ->

  widget_display = $(domEl)

  if @options.widgetEnable
      
    widget_display.find('#main').html(output)
  else
    widget_display.hide()



style: """
	font-weight: 200
	font-size: 25px
	font-family: Helvetica Neue

	if #{options.theme} == white
		text-color = #FFF
	else
		text-color = #000
	

	if #{options.vPosition} == center
		top: 50%
	else if #{options.vPosition} == top
		top: 20%
	else
		top: 95%

	if #{options.hPosition} == center
		left: 50%
	else
		left: 12%


	#main
		color: text-color
		margin: calc((100%/2)*-1) 0px 0px calc((100%/2)*-1)

	img
		max-width: 100px
		max-height: 100px
		position: absolute
		left: 0%
		margin: 0px 0px 0px -140px


	#title
		font-style: italic



"""