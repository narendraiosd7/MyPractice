//
//  ViewController.swift
//  Device Orientation
//
//  Created by narendra. vadde on 26/07/20.
//  Copyright © 2020 narendra. vadde. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
//        NotificationCenter.default.addObserver(self, selector: #selector(orientationChanged(_:)), name: UIDevice.orientationDidChangeNotification, object: nil)
    }
    
    @objc func orientationChanged(_ notification: Notification) {
        let device = UIDevice.current
        switch device.orientation {
        case .portrait:
            print("portrait")
        case .portraitUpsideDown:
            print("portraitUpsideDown")
        case .landscapeLeft:
            print("landscapeLeft")
        case .landscapeRight:
            print("landscapeRight")
        case .faceUp:
            print("faceUp")
        case .faceDown:
            print("faceDown")
        case .unknown:
            print("unknown")
        default:
            break
        }
    }

}
