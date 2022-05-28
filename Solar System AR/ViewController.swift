//
//  ViewController.swift
//  Solar System AR
//
//  Created by Oğuzhan Varsak on 28.05.2022.
//

import UIKit
import RealityKit

class ViewController: UIViewController {
    
    @IBOutlet var arView: ARView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Load the "Box" scene from the "Experience" Reality File
        let solarSystemAnchor = try! SolarSystem.loadScene()
        
        // Add the box anchor to the scene
        arView.scene.anchors.append(solarSystemAnchor)
    }
}
