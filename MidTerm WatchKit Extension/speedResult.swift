//
//  speedResult.swift
//  MidTerm
//
//  Created by Yenter, Nicholas A on 10/29/15.
//  Copyright © 2015 Yenter, Nicholas A. All rights reserved.
//

import WatchKit
import Foundation


class speedResult: WKInterfaceController {

    var mbps = Int32(Singleton.mbpsSpeed)
    var gbps = Int32(Singleton.mbpsSpeed)! * 1024
    var kbps = Int32(Singleton.mbpsSpeed)! * 1024 * 1024
    var bytes = Int32(Singleton.mbpsSpeed)! * 1024 * 1024 * 1024
    
    var speeds = [mbps, gbps, kbps, bytes]
    
    @IBOutlet var speedLabel: WKInterfaceLabel!
    
    @IBOutlet var theTable: WKInterfaceTable!
    override func awakeWithContext(context: AnyObject?)
    {
        super.awakeWithContext(context)
        
        self.speedLabel.setText("\(Singleton.mbpsSpeed)")
        
        let speedNames = ["Mbps" ,"Gbps" ,"Kbps" ,"Bytes"]
        self.theTable.setNumberOfRows(speedNames.count, withRowType: "cell")
        for(var i = 0; i < speedNames.count; i++)
        {
            let currRow = self.theTable.rowControllerAtIndex(i) as! Singleton!
            currRow.tableSpeedDisplay.setText(speedNames[i] + ": " + speeds[i])
        }
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
