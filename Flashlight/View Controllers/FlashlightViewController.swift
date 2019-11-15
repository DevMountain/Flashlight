//
//  FlashlightViewController.swift
//  Flashlight
//
//  Created by Karl Pfister on 11/15/19.
//  Copyright © 2019 Karl Pfister. All rights reserved.
//

import UIKit
import AVFoundation

class FlashlightViewController: UIViewController {

    //MARK:- Outlets
    @IBOutlet weak var FlashlightToggleButton: UIButton!

    //MARK:- Properties
    /// The Boolean we will use to track the flashlight's current state. The dafault value is set to False - or *Off*
    var isOn: Bool = false

    /// The local property we will use to dynamically update the status bars style. With the default state of our flashlight being *Off* we want to set the `statusBarStyle` to `.lightContent`
    var statusBarStyle: UIStatusBarStyle = .lightContent

    //MARK: - ViewLifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override var preferredStatusBarStyle: UIStatusBarStyle {
        return statusBarStyle
    }

    //MARK: - Actions
    @IBAction func toggleFlashlightSwipeGesture(_ sender: UISwipeGestureRecognizer) {
        // Defaults to .right direction
        sender.addTarget(self, action: #selector(flashlightToggleButtonTapped(_:)))
    }

    @IBAction func flashlightToggleButtonTapped(_ sender: Any) {
        /// Change the isOn state to the opposite
        isOn = !isOn
        /// Ternary operators used to clean up how many if/else statements we've had
        view.backgroundColor = isOn ? .white : .black
        FlashlightToggleButton.setTitle(isOn ? "Turn Off" : "Turn On", for: .normal)
        FlashlightToggleButton.setTitleColor(isOn ? .black : .white, for: .normal)
        statusBarStyle = isOn ? .default : .lightContent
        /// Update the statusbar color
        setNeedsStatusBarAppearanceUpdate()
        /// Turn on the flash
        toggleTorch(on: isOn)
    }

    //MARK: - Methods
    /**
     Flashlight Toggle Logic

     - Parameters:
     - on: The Boolean value for the flashlights state
     */
    func toggleTorch(on: Bool) {
        guard let device = AVCaptureDevice.default(for: AVMediaType.video) else { return }
        if device.hasTorch && device.isTorchAvailable {
            do {
                try device.lockForConfiguration()
                device.torchMode = on ? .on : .off
                device.unlockForConfiguration()
            } catch {
                print("Torch could not be used \(device.systemPressureState)")
            }
        } else {
            print("Torch is not available)")
        }
    }
}
