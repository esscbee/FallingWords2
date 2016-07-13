//
//  ViewController.swift
//  FallingWords2
//
//  Created by Stephen Brennan on 7/13/16.
//  Copyright © 2016 Stephen Brennan. All rights reserved.
//

import UIKit
import SpriteKit

class ViewController: UIViewController {

    @IBOutlet weak var skview: SKView!
    
    @IBOutlet weak var textField: UITextField!
    
    var scenes = [SKScene]()
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        scenes = [SKScene]()
        scenes.append(TopScene(fileNamed: "Scene1")!)
        scenes.append(TopScene(fileNamed: "Scene2")!)
        
        for s in scenes {
            s.scaleMode = .ResizeFill
        }

        skview.presentScene(scenes[0])
        
        
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        counter += 1
        let scene = scenes [ counter % scenes.count]
        skview.presentScene(scene)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func canBecomeFirstResponder() -> Bool {
        return true
    }


}

