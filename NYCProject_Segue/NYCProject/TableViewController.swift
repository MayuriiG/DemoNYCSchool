//
//  TableViewController.swift
//  NYCProject
//
//  Created by Mayurii Gajbhiye on 22/01/24.
//

import UIKit

class TableViewController: UIViewController {

   
    var flag = false
    @IBOutlet weak var cardTextView: UIView!
    @IBOutlet weak var schoolNameLbl: UILabel!
    @IBOutlet weak var locationLbl: UILabel!
    @IBOutlet weak var mobileNoLbl: UILabel!
    @IBOutlet weak var emailIDLbl: UILabel!
    @IBOutlet weak var textView: UITextView!
   
    @IBOutlet weak var style1: UIView!
    @IBOutlet weak var style2: UIView!
    @IBOutlet weak var style3: UIView!
    @IBOutlet weak var style4: UIView!
    
    @IBOutlet weak var readingLbl: UILabel!
    @IBOutlet weak var writingLbl: UILabel!
    @IBOutlet weak var mathsLbl: UILabel!
    @IBOutlet weak var appreaLbl: UILabel!
    
    
    @IBOutlet weak var requireLbl: UILabel!
    var data: [String:Any]?
   

    override func viewDidLoad() {
        super.viewDidLoad()


        self.cardTextView.layer.borderWidth = 1
        self.cardTextView.layer.borderColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)

        style1.layer.cornerRadius = 25
        style1.layer.masksToBounds = true
        style2.layer.cornerRadius = 25
        style2.layer.masksToBounds = true
        style3.layer.cornerRadius = 25
        style3.layer.masksToBounds = true
        style4.layer.cornerRadius = 25
        style4.layer.masksToBounds = true
        
        
        
        DispatchQueue.main.async {
            if let overView = self.data?["overview_paragraph"] as? String {
                self.textView.text = overView
            } else{   self.textView.text = "The mission of Liberation Diploma Plus High School, in partnership with CAMBA, is to develop the student academically, socially, and emotionally. We will equip students with the skills needed to evaluate their options so that they can make informed and appropriate choices and create personal goals for success. " }
       
            if let title = self.data? ["school_name"] as? String {
                self.schoolNameLbl.text = title
            } else{   self.schoolNameLbl.text = "School For Cooperative Technical Education" }
                
            if let emailIDs = self.data? ["school_email"] as? String {
                self.emailIDLbl.text = emailIDs
            } else{   self.emailIDLbl.text = "School@nyUniversity.com" }
                
            if let locations = self.data? ["location"] as? String {
                self.locationLbl.text = locations
            } else{   self.locationLbl.text = "10 East 15th Street, Manhattan NY 10003" }
            
            
            if let phone = self.data? ["phone_number"] as? String {
                self.mobileNoLbl.text = phone
            } else{   self.mobileNoLbl.text = "+61334344545" }
            
            if let totalstudents = self.data? ["total_students"] as? String {
                self.readingLbl.text = totalstudents
            } else{   self.readingLbl.text = "234" }
            
            if let require = self.data? ["requirement4_1"] as? String {
                self.requireLbl.text = "Requirement : \(require)"
            } else{   self.requireLbl.text = "Writing Exercise" }
            
            
            if let codeq = self.data? ["code1"] as? String {
                self.writingLbl.text =  codeq
            } else{   self.writingLbl.text = "M64A" }
            
            if let finalgrades = self.data? ["finalgrades"] as? String {
                self.mathsLbl.text =  finalgrades
            } else{   self.mathsLbl.text = "6-12" }
            
            if let seatG = self.data? ["seats9ge1"] as? String {
                self.appreaLbl.text =  seatG
            } else{   self.appreaLbl.text = "80" }
         }
          
       }
     }

