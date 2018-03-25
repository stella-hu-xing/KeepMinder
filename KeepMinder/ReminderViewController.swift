//
//  ReminderViewController.swift
//  KeepMinder
//
//  Created by Xing Hu on 23/3/18.
//  Copyright © 2018 Stella Hu. All rights reserved.
//

import Cocoa

class ReminderViewController: NSViewController {

    @IBOutlet var itemList: NSTableView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

}

extension ReminderViewController {
    // MARK: Storyboard instantiation
    static func freshController() -> ReminderViewController {
        //1. Get a reference to Main.storyboard.
        let storyboard = NSStoryboard(name: NSStoryboard.Name(rawValue: "Main"), bundle: nil)
        //2. Create a Scene identifier that matches the one you set just before.
        let identifier = NSStoryboard.SceneIdentifier(rawValue: "ReminderViewController")
        //3. Instantiate ReminderViewController and return it.
        guard let viewcontroller = storyboard.instantiateController(withIdentifier: identifier) as? ReminderViewController else {
            fatalError("Why cant i find ReminderViewController? - Check Main.storyboard")
        }
        return viewcontroller
    }
}


