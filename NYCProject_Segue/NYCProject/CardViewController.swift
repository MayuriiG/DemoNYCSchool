//
//  CardViewController.swift
//  NYCProject
//
//  Created by Mayurii Gajbhiye on 21/01/24.
//

import UIKit
import Foundation




//struct SchoolDetails: Decodable {
//
//    let schoolName,  satScore,  maths,  writing,  dataNo , rank :   String
//
//    enum CodingKeys:String, CodingKey{
//
//        case schoolName = "school_name"
//        case satScore = "sat_critical_reading_avg_score"
//        case maths = "sat_math_avg_score"
//        case writing = "sat_writing_avg_score"
//        case dataNo = "dbn"
//        case rank = "num_of_sat_test_takers"
//    }
//}



//class CardViewController: UIViewController {
//
//
//    @IBOutlet weak var tbleview: UITableView!
//
//    var arrResp = [SchoolDetails]()
//
//    var jsonArr = [String]()
//    var flag = false
//    let alertController = UIAlertController()
//
//
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//
//        DispatchQueue.global().async {
//           //  self.SchoolList()
//           //  self.getData()
//
//
//        }
//
//    }
//
//
//}

//extension CardViewController:UITableViewDelegate,UITableViewDataSource{
//
//
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//
//            return self.arrResp.count
//
//    }
//
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//
//            let cell: CardTableViewCell = tableView.dequeueReusableCell(withIdentifier: "Cell")as! CardTableViewCell
//
//            cell.sNameLbl.text = arrResp[indexPath.row].schoolName
//            cell.scoreLbl.text = arrResp[indexPath.row].rank
//            cell.writingScoreLbl.text =  arrResp[indexPath.row].writing
//            cell.readingScoreLbl.text =  arrResp[indexPath.row].satScore
//            cell.mathsScoreLbl.text =  arrResp[indexPath.row].maths
//
//        return cell
//
//    }
//
//
//
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//
//
//        let detail:DetailViewController = self.storyboard?.instantiateViewController(withIdentifier: "DetailViewController")  as! DetailViewController
//
//           // detail.nameString = arrResp[indexPath.row].schoolName
//           // detail.jsonArr = detailArrResp
//
//            if (flag == false){
//        //showToast(message: "Wait API is Fetching ")
//        //        let alertController = UIAlertController(title: "Title", message: "Message", preferredStyle: .alert)
//        //       present(alertController, animated: true, completion: nil)
//
//            }else{
//                self.navigationController?.pushViewController(detail, animated: true)
//            }
////        }else{
////
////
////
////
////    }
//
//    }
//
//}
