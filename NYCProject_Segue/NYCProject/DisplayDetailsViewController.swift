//
//  DisplayDetailsViewController.swift
//  NYCProject
//
//  Created by Mayurii Gajbhiye on 21/01/24.
//

import UIKit


struct SchoolDetails: Decodable {

    let schoolName,  satScore,  maths,  writing,  dataNo , rank :   String

    enum CodingKeys:String, CodingKey{

        case schoolName = "school_name"
        case satScore = "sat_critical_reading_avg_score"
        case maths = "sat_math_avg_score"
        case writing = "sat_writing_avg_score"
        case dataNo = "dbn"
        case rank = "num_of_sat_test_takers"
    }
}




class DisplayDetailsViewController: UIViewController {

    
    var selectedIindex : Int!
    
    @IBOutlet weak var tbleView: UITableView!
    var arrResp = [SchoolDetails]()
    var jsonArr = [[String:Any]]()
    var jsonArray = [[String:Any]]()
    var passArr = [[String:Any]]()
    var flag = false
    var dbn = String()
    
    
//    
    override func viewDidLoad() {
        super.viewDidLoad()

        DispatchQueue.global().async {
            
            self.SchoolList()
        }
        DispatchQueue.global().async {
            
            self.getDataa { jsonArr in
                print(jsonArr)
                self.passArr = jsonArr
         }

        }
            
           
    }
    
    
   }


extension DisplayDetailsViewController:UITableViewDelegate,UITableViewDataSource{
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return self.arrResp.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: CardTableViewCell = tableView.dequeueReusableCell(withIdentifier: "Cell")as! CardTableViewCell
        
        dbn =   arrResp[indexPath.row].dataNo
        cell.sNameLbl.text =  dbn
       
        cell.sNameLbl.text =  arrResp[indexPath.row].schoolName
        cell.scoreLbl.text = arrResp[indexPath.row].rank
        cell.writingScoreLbl.text = arrResp[indexPath.row].writing
        cell.readingScoreLbl.text = arrResp[indexPath.row].satScore
        cell.mathsScoreLbl.text =  arrResp[indexPath.row].maths
        
        
        return cell
        
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        var alertController = UIAlertController()
        self.selectedIindex = indexPath.row
        
        
        
        if (flag == false){
//            alertController = UIAlertController(title: "LOADING ◉ ", message: "Wait API is Fetching !", preferredStyle: .alert)
//            present(alertController, animated: true, completion: nil)
        }else{
          //  alertController.dismiss(animated: true, completion: {
             //   self.performSegue(withIdentifier: "New", sender: nil)
         //   })
        }
        self.performSegue(withIdentifier: "New", sender: nil)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier  == "New"{
            if let vc = segue.destination as? TableViewController{
                let selectedSchoolID = arrResp[self.selectedIindex].dataNo
                let requiredID = passArr.filter { element in
                    element["dbn"] as? String ==  selectedSchoolID
                }.first
                
                vc.data = requiredID
            
//                vc.jsonDataArr = passArr
   
        }
       }
    }
  }

//}
//




