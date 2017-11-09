#Displays current iTunes track title, artist and album art on your desktop

options =
  widgetEnable: true			#true to enable the widget, false to disable
  vPosition: 'center'			#verticle position of the bar, options: 'top', 'center', 'bottom'
  hPosition: 'center'			#horizontal position of the bar, options: 'left', 'center'
  theme: 'white'				#theme options: 'white', 'black'
  vOffset: '70px'				#offset the position of the widget vertically from default options, positive numbers shift the widget up
  hOffset: '70px'				#offset the position of the widget horizontally from default options, positive numbers shift the widget left

options : options

command: "osascript iTunesNowPlaying.widget/iTunesinfo.scpt #{options.theme}"

refreshFrequency: '70s'

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
	font-size: 22px
	font-family: Helvetica Neue

	if #{options.theme} == white
		text-color = #FFF
	else
		text-color = #000
	

	if #{options.vPosition} == center
		top: calc(50% - 50px - #{options.vOffset})
	else if #{options.vPosition} == top
		top: calc(5% - #{options.vOffset})
	else
		bottom: calc(5% - #{options.vOffset})


	if #{options.hPosition} == center
		left: calc(50% - 200px- #{options.hOffset})
	else
		left: calc(5% - #{options.hOffset})

	#main
		color: text-color

	img
		max-width: 100px
		max-height: 100px
		position: absolute
		left: 0%
		
	#info
		margin-left: 110px

	#title
		font-style: italic



"""