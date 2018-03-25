//
//  AppDelegate.swift
//  KeepMinder
//
//  Created by Xing Hu on 23/3/18.
//  Copyright © 2018 Stella Hu. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    //Status Item — application icon — in the menu bar with a fixed length that the user will see and use.
    let firststatusItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.squareLength)
    let SecondestatusItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.variableLength)
    let popOver = NSPopover()

    func applicationDidFinishLaunching(_ aNotification: Notification) {

        let button = firststatusItem.button!
        button.image = NSImage(named: NSImage.Name("StatusBarButtonImage"))
        button.action = #selector(togglePopover(_:))
        
        let item = SecondestatusItem.button!
//        item.title = "这里显示一条提醒事项内容"
        popOver.contentViewController = ReminderViewController.freshController()
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        
    }

    @objc func togglePopover(_ sender: Any?) {
        if popOver.isShown {
            closePopover(sender: sender)
        } else {
            showPopover(sender: sender)
        }
    }
    
    func showPopover(sender: Any?) {
        if let button = firststatusItem.button {
            popOver.show(relativeTo: button.bounds, of: button, preferredEdge: NSRectEdge.minY)
        }
    }
    
    func closePopover(sender: Any?) {
        popOver.performClose(sender)
    }
}

