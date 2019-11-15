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

    //MARK: - ViewLifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    //MARK: - Actions
    @IBAction func flashlightToggleButtonTapped(_ sender: Any) {

        if isOn == true {
            /// Because the flashlight is `On` we want to turn it off.
            isOn = false
            /// Change the backround color to match the new state - `Off`
            view.backgroundColor = .black
            /// Update the title and title color accoringly
            FlashlightToggleButton.setTitle("Turn On", for: .normal)
            FlashlightToggleButton.setTitleColor(.white, for: .normal)
        } else {
            /// Because the flashlight is `Off` we want to turn it on.
            isOn = true
            /// Change the backround color to match the new state - `On`
            view.backgroundColor = .white
            /// Update the title and title color accoringly
            FlashlightToggleButton.setTitle("Turn Off", for: .normal)
            FlashlightToggleButton.setTitleColor(.black, for: .normal)
        }
    }
}
