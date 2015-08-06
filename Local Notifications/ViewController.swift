//
//  ViewController.swift
//  Local Notifications
//
//  Created by Mac Bellingrath on 8/6/15.
//  Copyright © 2015 Mac Bellingrath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func registerLocal(sender: AnyObject) {
        let notificationSettings = UIUserNotificationSettings(forTypes: [.Alert, .Badge, .Sound], categories: nil)
        UIApplication.sharedApplication().registerUserNotificationSettings(notificationSettings)
    }
    @IBAction func scheduleLocal(sender: AnyObject) {
        let settings = UIApplication.sharedApplication().currentUserNotificationSettings()
        if settings?.types == .None {
            let ac = UIAlertController(title: "Can't Schedule", message: "Either you haven't given us permission, or we haven't asked yet.", preferredStyle: .Alert)
            ac.addAction(UIAlertAction(title: "OK", style: .Default, handler: nil))
            presentViewController(ac, animated: true, completion: nil)
            return
        }
        let notification = UILocalNotification()
        notification.fireDate = NSDate(timeIntervalSinceNow: 5)
        notification.alertBody = "Hey You! Swipe Me!"
        notification.alertAction = "be awesome!"
        notification.soundName = UILocalNotificationDefaultSoundName
        notification.alertLaunchImage = "Spaceship"
        notification.userInfo = ["CustomField1": "w00t"]
        UIApplication.sharedApplication().scheduleLocalNotification(notification)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}





















































