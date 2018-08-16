# Flashlight

Students will build a simple Flashlight app to practice working with IBOutlets, IBActions, and UIControlEvents. 

Students who complete this project independently are able to:

* use, understand, and describe different UIControls available in Cocoa Touch
* use, understand, and describe UIControlEvents
* create and use IBOutlets to get access to Storyboard elements in code
* create and use IBActions to run code on a UIControlEvent 

## Guide

### Flashlight View

Build a view with two states. The first state has a black background and an 'On' button with white text. When the user taps 'On' change the background to white, update the button's title to 'Off', and change the button text color to black. The button should toggle the two states.

1. Open the ViewController scene in Main.storyboard
2. Add a UIButton to the view, set the initial title to 'On'
3. Set the view's background color to black
4. Open the Assistant editor and Control Click and drag from the UIButton to the ViewController.swift file.  Select IBAction, on TouchUpInside from the popup menu.  
*Xcode should generate a code snippet  ```@IBAction func buttonTapped(_ sender: Any)``` 

### Flashlight Logic

1. Create a boolean variable isOn to track whether the flashlight is on or off in the ViewController class
2. Use the ```buttonTapped``` IBAction to check the current state of the ViewController and toggle the appropriate parameters
    * ex. If isOn is false, set background color, button title text, and button title color

### Black Diamonds

* Make the Status Bar visible in both Flashlight modes
Documentation: https://developer.apple.com/documentation/uikit/uistatusbarstyle?language=objc
* Toggle the device's LED light when turning the Flashlight on
Documentation: https://developer.apple.com/documentation/avfoundation/avcapturedevice?language=objc * See Managing Torch Settings*
* Allow the Flashlight to toggle on and off using a tap guesture anywhere on the screen.
Documentation: https://developer.apple.com/documentation/uikit/uitapgesturerecognizer?language=objc


## Contributions

Please refer to CONTRIBUTING.md.

## Copyright

© DevMountain LLC, 2015. Unauthorized use and/or duplication of this material without express and written permission from DevMountain, LLC is strictly prohibited. Excerpts and links may be used, provided that full and clear credit is given to DevMountain with appropriate and specific direction to the original content.
