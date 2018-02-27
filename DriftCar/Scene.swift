//
//  Scene.swift
//  DriftCar
//
//  Created by Krystian Śliwa on 27/02/2018.
//  Copyright © 2018 Krystian Śliwa. All rights reserved.
//

import SceneKit

class Scene: SCNScene {

    public func setupNodes() {
        let floor = Floor()
        self.rootNode.addChildNode(floor)
        
        let cameraNode = SCNNode()
        cameraNode.camera = SCNCamera()
        cameraNode.camera?.zFar = 300
        rootNode.addChildNode(cameraNode)
        
        cameraNode.position = SCNVector3(x: 0, y: 60, z: 0)
        
        let lightNode = SCNNode()
        lightNode.light = SCNLight()
        lightNode.light!.type = .omni
        lightNode.position = SCNVector3(x: 0, y: 10, z: 0)
        rootNode.addChildNode(lightNode)
        
        let ambientLightNode = SCNNode()
        ambientLightNode.light = SCNLight()
        ambientLightNode.light!.type = .ambient
        ambientLightNode.light!.color = NSColor.darkGray
        rootNode.addChildNode(ambientLightNode)
        
    }
    
}
