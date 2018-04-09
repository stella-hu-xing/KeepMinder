//
//  ReminderViewController.swift
//  KeepMinder
//
//  Created by Xing Hu
//  Copyright © 2018 Stella Hu. All rights reserved.
//

import Cocoa

class ReminderViewController: NSViewController, NSTableViewDelegate, NSTableViewDataSource {
    
    @IBOutlet var itemList: NSTableView!
    var items: [Item] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        items = [
            Item(content: "Tomorrow's meeting", isFinished: false),
            Item(content: "Friday meeting", isFinished: false),
            Item(content: "Next week exam", isFinished: false)
        ]
        
        itemList.delegate = self
        itemList.dataSource = self
    
    }
    
    func numberOfRows(in tableView: NSTableView) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: NSTableView, viewFor tableColumn: NSTableColumn?, row: Int) -> NSView? {
        
        guard let cell = tableView.makeView(withIdentifier: tableColumn!.identifier, owner: self) as? NSTableCellView else { return nil }
        
        if (tableColumn?.identifier)!.rawValue == "content" {
            cell.textField?.stringValue = items[row].content
        } else if (tableColumn?.identifier)!.rawValue == "isFinished" {
            cell.textField?.stringValue = items[row].isFinished.description
        }
        
        return cell
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


