//
//  ViewController.swift
//  NYCProject
//
//  Created by Mayurii Gajbhiye on 21/01/24.
//

import UIKit

class ViewController: UIViewController {

     let imageview:UIImageView = {
        let imgview = UIImageView(frame: CGRect(x: 0, y: 0, width: 200, height: 100))
        imgview.image = UIImage(named: "nyc")
        return imgview
    }()
    
    
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        view.addSubview(imageview)

    }


    override func viewDidLayoutSubviews() {
        super .viewDidLayoutSubviews()
        
        imageview.center = view.center
        
        DispatchQueue.main.asyncAfter(deadline:.now()+0.1, execute: {
            self.animation()
        })
    }
    
    
    

}

