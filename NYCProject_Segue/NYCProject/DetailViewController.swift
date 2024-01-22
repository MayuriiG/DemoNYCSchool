////
////  DetailViewController.swift
////  NYCProject
////
////  Created by Mayurii Gajbhiye on 21/01/24.
////
//
//import UIKit
//
//class DetailViewController: UIViewController {
//
//    
//    
//    @IBOutlet weak var cardView: UIView!
//    @IBOutlet weak var schoolLbl: UILabel!
//    @IBOutlet weak var locLbl: UILabel!
//    @IBOutlet weak var mobilLbl: UILabel!
//    @IBOutlet weak var emailLbl: UILabel!
//    @IBOutlet weak var txtView: UITextView!
//    @IBOutlet weak var mobiLbl: UIButton!
//    var arr = [String]()
//    var nameStr :String = ""
//    var summryStr :String = ""
//    var mobileStr :String = ""
//    var mailStr :String = ""
//    var locaStr :String = ""
//   
//    var jsonDataArr: [[String: Any]] = []
//    var receivedData: [[String: Any]] = []
//   
//    
//    
//    
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        
//        
//        
//      
//        cardView.layer.borderWidth = 1
//        cardView.layer.borderColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
//        
//        
//        print(receivedData)
//        schoolLbl.text = nameStr
//        txtView.text = summryStr
//        mobiLbl.setTitle("+\(mobileStr)", for: .normal) 
//        locLbl.text = locaStr
//        emailLbl.text = mailStr
//        
//     
//        // Do any additional setup after loading the view.
//    }
//    
//
//    
//    @IBAction func callPhoneOne_action(_ sender : UIButton) {
//        
//        UIApplication.shared.open(NSURL(string: mobileStr)! as URL, options: [:], completionHandler: nil)
//    }
//    
//    //    for key in jsonDataArr {
//    //
//    //    print(jsonDataArr)
//    //
//    //        let mobileStr =  key["phone_number"] as? String
//    //        emailLbl.text =  key["school_email"] as? String
//    //        let city =  key["city"] as? String
//    //        let summary =  key["overview_paragraph"] as? String
//    //        let locatiStr =  key["location"] as? String
//    //        let grades =  key["grades2018"] as? String
//    //         let finalgrades =  key["finalgrades"] as? String
//    //         let student =  key["total_students"] as? String
//    //         let req =  key["requirement4_1"] as? String
//    //         let Offer =  key["offer_rate1"] as? String
//    //         let program =  key["program1"] as? String
//    //
//    //               //     locLbl.text = location
//    //
//    //        }
// 
//}
