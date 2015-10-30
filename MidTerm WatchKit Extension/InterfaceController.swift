//
//  InterfaceController.swift
//  MidTerm WatchKit Extension
//
//  Created by Yenter, Nicholas A on 10/29/15.
//  Copyright © 2015 Yenter, Nicholas A. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var theSpeed: WKInterfacePicker!
    
    var j = 0
    override func awakeWithContext(context: AnyObject?)
    {
        super.awakeWithContext(context)
        
        var thePickerItems = [WKPickerItem]()
        for(var i = 0; i < 1000; i++)
        {
            thePickerItems.append(WKPickerItem())
            thePickerItems[i].title = "\(i + 1)"
        }
       self.theSpeed.setItems(thePickerItems)

    }
    
    @IBAction func recordSpeed()
    {
        Singleton.mbpsSpeed = "\(self.theSpeed)"
    }
    override func willActivate()
    {
        // This method is called when watch view controller is about to be visible to user
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
