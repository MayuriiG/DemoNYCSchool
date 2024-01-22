//
//  ApiPoint.swift
//  NYCProject
//
//  Created by Mayurii Gajbhiye on 21/01/24.
//

import Foundation
import UIKit


extension DisplayDetailsViewController{
    
    
    
    
    func SchoolList()  {
        
        let apiUrl = "https://data.cityofnewyork.us/resource/f9bf-2cp4.json"
        guard URL(string: apiUrl) != nil else {   print("Invalid URL");   return  }
        
        URLSession.shared.dataTask(with: URL(string: apiUrl)!) { (responseData, httpUrlResponse, error) in
            
            if(error == nil && responseData != nil && responseData?.count != 0)  {
                let decoder = JSONDecoder()
                do {
                    self.arrResp = try decoder.decode([SchoolDetails].self, from: responseData!)
                    print("SChoolData:----->>>>>>\(self.arrResp.count)")//478
                    for tag in self.arrResp {
                      //  debugPrint(tag.schoolName.count)
                        
                        DispatchQueue.main.async { self.tbleView.reloadData() }
                    }
                    
                }  catch let error{
                    debugPrint("error occured while decoding = \(error.localizedDescription)")
                }
            }
            
        }.resume()
    }
    
    
    func getDataa(completion: @escaping ([[String: Any]]) -> Void) {
        let session = URLSession.shared
        let serviceUrl = URL(string: "https://data.cityofnewyork.us/resource/s3k6-pzi2.json")
        var jsonArray: [[String: Any]] = []
        let task = session.dataTask(with: serviceUrl!) { (serviceData, serviceResponse, error) in
            if error == nil {
                
                let httpResponse = serviceResponse as! HTTPURLResponse
                if httpResponse.statusCode == 200 {
                    self.flag = true
                    do {
                        jsonArray = try JSONSerialization.jsonObject(with: serviceData!, options: []) as? [[String: Any]] ?? []
                        debugPrint("DetailSchoolList: ------>\(jsonArray.count)") //440
                        
                        
                    } catch {
                        debugPrint("Error occurred while decoding = \(error.localizedDescription)")
                    }

                    DispatchQueue.main.async {
                      
                        completion(jsonArray)
                    }
                }
            }
        }

        task.resume()
    }
    
    
    
    
}
    

    
    
    
   
