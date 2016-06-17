# Skycons-Swift

This is a port of the animated HTML5 canvas weather icons - [**Skycons**](http://darkskyapp.github.io/skycons/) from [**forecast.io**](http://forecast.io) - to Swift. Credit goes to [**zachwaugh**](https://github.com/zachwaugh/cocoa-skycons) as this project is translated from his works with minor bug fixes.

This is a one day transfer from zachwaugh's Objective C code to Swift, so it is not as Swifty as it should be.

## Usage

Create a `SKYIconView`, with a frame in mind. Set the type of weather and color, then use as you would use a UIView. It will be animated by default and the animation can be turned off by setting the new that you have created to pause 

```Swift
let iconView = SKYIconView(frame: frame)
iconView.setType = .ClearDay
iconView.setColor = UIColor.cyanColor()
self.view.addSubview(iconView)
iconView.pause To pause the animation when needed
```

## Gif

<p align="center">
  <img src="https://github.com/miwand/Skycons-Swift/blob/master/skycons-Gif.gif" alt="Skycons"/>
</p>


## License

This is released into the public domain, same as the originals.
