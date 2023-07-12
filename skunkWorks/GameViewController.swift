//
//  GameViewController.swift
//  skunkWorks
//
//  Created by DM on 06/08/2022.
//

import AppKit
import RealityKit

class GameViewController: NSViewController {
    
    @IBOutlet var arView: ARView!
    
    override func awakeFromNib() {
        super.viewDidLoad()
        arView.environment.background = .color(.gray)
        //arView.isUserInteractionEnabled = true
        //arView.isMultipleTouchEnabled = true
        
        let m = ModelEntity.init(mesh: MeshResource.generateBox(size: 0.5), materials: [UnlitMaterial.init(color: .red)])
        let a = AnchorEntity.init(world: simd_float3(0, 0, 0))
        a.addChild(m)
        
        arView.scene.anchors.append(a)
    }
}
