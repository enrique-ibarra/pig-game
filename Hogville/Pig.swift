//
//  Pig.swift
//  Hogville
//
//  Created by Enrique Ibarra on 10/8/14.
//  Copyright (c) 2014 Jean-Pierre Distler. All rights reserved.
//

import Foundation
import SpriteKit

class Pig: SKSpriteNode {
    
    let POINTS_PER_SEC: CGFloat = 80.0
    var wayPoints: [CGPoint] = []
    var velocity = CGPoint(x: 0, y: 0)
    
    init(imageNamed name: String!) {
        let texture = SKTexture(imageNamed: name)
        super.init(texture: texture, color: nil, size: texture.size())
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func addMovingPoint(point: CGPoint) {
        wayPoints.append(point)
    }
    
    func move(dt: NSTimeInterval) {
        let currentPosition = position
        var newPosition = position
        
        /*
        
            First you check to ensure there are waypoints left in the array. For the moment, the pig stops moving when it reaches the final point of the path. Later, you’ll make the pig a little smarter so it continues walking in its last direction even when no waypoints remain.
        */
        if wayPoints.count > 0 {
            let targetPoint = wayPoints[0]
            
            // 2 TODO: add movement logic here
            
            // 3
            if frame.contains(targetPoint) {
                wayPoints.removeAtIndex(0)
            }
        }
    }
}
