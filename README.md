# Flashlight

Students will build a simple Flashlight app to practice working with IBOutlets, IBActions, and UIControlEvents. 

Students who complete this project independently can:

* use, understand and describe different UIControls available in Cocoa Touch
* use, understand and describe UIControlEvents
* create and use IBOutlets to get access to Storyboard elements in code
* create and use IBActions to run code on a UIControlEvent 

## Guide

### Flashlight View

For this app, build a single view with two states, an `On` state, and an `Off` state. The first state, the `On` state, should have a black background and an `On` button with white text. Change the background to white when the user taps the `On` text, update the button's title to `Off`, and change the button text color to black. This button will be what toggles the two states.

1. Open the Main.storyboard file and locate the ViewController scene.
2. Add a UIButton to the view, set the initial title to `On`, and change the text color to white to make it look like the button disappeared.
3. Set the view's background color to black (you should be able to see your button again).
4. Open the ViewController.swift file in the Assistant editor. To accomplish this, hold down the option key, with the storyboard open, select the ViewController.swift file and drag from the UIButton to the ViewController.swift file above the viewDidLoad. The connection type should display "Outlet". Give this outlet the name of onOffButton.
5. Repeat the above step. Instead of placing it above the viewDidLoad, place it below the closing bracket of the viewDidLoad. The connection type should display "Action" and below that, you should see "Touch Up Inside". Give this Action the name "buttonTapped". 
*At this point, Xcode should generate a code snippet  
```@IBAction func buttonTapped(_ sender: Any)``` 

### Flashlight Logic

1. In the ViewController class, create a boolean variable and name it isOn to track whether the Flashlight is on or off. Give the variable a default value of false, so that it starts in the `Off` state when the Flashlight launches.
2. Use the ```buttonTapped``` IBAction to check the current state of the ViewController and toggle the appropriate parameters (an if/else statement might be the way to go here)
* ex. If `isOn` were set to false when that button was tapped (meaning the Flashlight was off), we would want to set our state to on. To do this, check whether the value of `isOn` is false. If it is, set background color, button title text, and button title color to the appropriate settings for when the Flashlight is supposed to be on. Do not forget to then change the value of `isOn` to True. If the value of `isOn` is True, we would want to make different changes. These changes can be made in the "else" part of the if/else statement.

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
