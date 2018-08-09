#Displays current iTunes track title, artist and album art on your desktop

options =
  widgetEnable: true			#true to enable the widget, false to disable
  theme: 'white'				#theme options: 'white', 'black'
  vPosition: 'center'			#verticle position, options: 'top', 'center', 'bottom'
  hPosition: 'center'			#horizontal position, options: 'left', 'center'
  vOffset: '65px'				#offset the position of the widget vertically from default options, positive numbers shift the widget up
  hOffset: '100px'				#offset the position of the widget horizontally from default options, positive numbers shift the widget left
  fontSize: '23px'				#change the size of the font
  artMaxSize: '100px'			#change the size of the album art

options : options

command: "osascript iTunesNowPlaying.widget/iTunesinfo.scpt #{options.theme}"

refreshFrequency: '5s'

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
	font-size: #{options.fontSize}
	font-family: Helvetica Neue
	text-color = #{options.theme}
	

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
		max-width: #{options.artMaxSize}
		max-height: #{options.artMaxSize}
		position: absolute
		left: 0%
		
	#info
		margin-left: calc(#{options.artMaxSize} + 10px)

	#title
		font-style: italic



"""