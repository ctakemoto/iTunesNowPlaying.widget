# iTunesNowPlaying.widget

An [Übersicht](http://tracesof.net/uebersicht/) widget to display the currently playing song in iTunes on your Desktop. You will need to install Übersicht first before you can use this widget. 

Once Übersicht is installed, download the [zip file](iTunesNowPlaying.widget.zip) of the widget and move the unzipped folder into the Widgets Folder which can be found by clicking on the Übersicht icon in the menu bar.

*Screen shot - White Theme*
![Example Screenshot of widget](ScreenshotWhite.png)

## Options

The widget can be customized by changing the options found at the top of the *index.coffee* file.

### widgetEnable

Easily choose to display or hide the widget by changing the value. Set widgetEnable to true to display it, and false to disable.

### theme

Change the color of the text and placeholder album art. Currently, there are two themes available, white or black.

*Screen shot - Black Theme*
![Example Screenshot of widget](ScreenshotBlack.png)

### vPosition & hPosition

Change the vertical and horizontal position of the widget by changing the values of vPosition and hPostion respectively. vPostion can be set to 'top', 'center', or 'bottom' and hPosition can be set to 'left' or 'center'.

### vOffset & hOffset

To further customize the position change the values of vOffset and hOffset. For example, to display the widget slightly higher on the screen than the center, set vPosition to 'center' and adjust vOffset until it's in the desired location.

### fontSize

Change the size of the text.

### artMaxSize

Change the size of the album art. Note, if artMaxSize is set to a larger size than the actual size of the album art image file, the album art will be displayed at it's actual size not the number specified in the options.

