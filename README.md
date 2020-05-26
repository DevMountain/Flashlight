# Flashlight

Students will build a simple Flashlight app to practice working with IBOutlets, IBActions, and UIControlEvents. 

Students who complete this project independently are able to:

* use, understand, and describe different UIControls available in Cocoa Touch
* use, understand, and describe UIControlEvents
* create and use IBOutlets to get access to Storyboard elements in code
* create and use IBActions to run code on a UIControlEvent 

## Guide

### Flashlight View

For this app, you will build a single view which will have two states, an `On` state and an `Off` state. The first state, the `On` state, has a black background and an `On` button with white text. When the user taps `On`, you will change the background to white, update the button's title to `Off`, as well as change the button text color to black. This button will be what toggles the two states.

1. Open the Main.storyboard file and locate the ViewController scene.
2. Add a UIButton to the view, set the initial title to `On`, and change the text color to white (this will make it look like the button has disappeared).
3. Set the view's background color to black (you should be able to see your button again).
4. Open the ViewController.swift file in the Assistant editor (one way to do this would be, while the storyboard is open, hold option and select the ViewController.swift file), and while holding control drag from the UIButton to the ViewController.swift file (somewhere above the viewDidLoad). The connection type should display "Outlet". Give this outlet a name of onOffButton.
5. Repeat the above step, but instead of dragging to above the viewDidLoad, drag to somewhere below the closing bracket of the viewDidLoad. This time, the connection type should display "Action" and below that you should see "Touch Up Inside". Give this Action a name of "buttonTapped". *At this point, Xcode should generate a code snippet  ```@IBAction func buttonTapped(_ sender: Any)``` 

### Flashlight Logic

1. In the ViewController class, create a boolean variable called isOn to track whether the flashlight is on or off. Give isOn a default value of false, so that when we launch the flashlight it starts off in the `Off` state.
2. Use the ```buttonTapped``` IBAction to check the current state of the ViewController and toggle the appropriate parameters (an if/else statement might be the way to go here)
* ex. If `isOn` was set to false when that button was tapped (meaning the flashlight was off) we will want to set our state to on. To do this check to see if `isOn` is false, and if it is, set background color, button title text, and button title color to the appropriate settings for when the flash light is supposed to be on, and don't forget to then change the value of `isOn` to true. If `isOn` was set to true, we would want to make different changes. Make these changes in the "else" part of the if/else statement.

### Black Diamonds

* Make the Status Bar visible in both Flashlight modes
Documentation: https://developer.apple.com/documentation/uikit/uistatusbarstyle?language=objc
* Toggle the device's LED light when turning the Flashlight on
Documentation: https://developer.apple.com/documentation/avfoundation/avcapturedevice?language=objc * See Managing Torch Settings*
* Allow the Flashlight to toggle on and off using a tap gesture anywhere on the screen.
Documentation: https://developer.apple.com/documentation/uikit/uitapgesturerecognizer?language=objc

## Contributions

Please refer to CONTRIBUTING.md.

## Copyright

© DevMountain LLC, 2020. Unauthorized use and/or duplication of this material without express and written permission from DevMountain, LLC is strictly prohibited. Excerpts and links may be used, provided that full and clear credit is given to DevMountain with appropriate and specific direction to the original content.
