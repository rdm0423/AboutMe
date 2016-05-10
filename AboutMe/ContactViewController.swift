//
//  ContactViewController.swift
//  AboutMe
//
//  Created by Ross McIlwaine on 5/9/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import UIKit
import MessageUI

class ContactViewController: UIViewController, MFMailComposeViewControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()


    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func sendMailButtonTapped(sender: AnyObject) {
        
        sendEmail()
        
    }
    
    
    func sendEmail() {
        if MFMailComposeViewController.canSendMail() {
            let mail = MFMailComposeViewController()
            mail.mailComposeDelegate = self
            mail.setToRecipients(["rdm0423@gmail.com"])
            mail.setSubject("Want to know more about you")
            mail.setMessageBody("<p>Hi Ross, it was great getting to know you. I have a couple of questions for you, please see them below!</p>", isHTML: true)
            
            presentViewController(mail, animated: true, completion: nil)
            
        } else {
            // show failure alert
        }
    }
    
    func mailComposeController(controller: MFMailComposeViewController, didFinishWithResult result: MFMailComposeResult, error: NSError?) {
        controller.dismissViewControllerAnimated(true, completion: nil)
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
