//
//  SplashScreen.swift
//  NYCProject
//
//  Created by Mayurii Gajbhiye on 21/01/24.
//

import Foundation
import UIKit





extension ViewController{
    
    
    func animation() {
        UIView.animate(withDuration: 1, animations: {
            let size = self.view.frame.size.width * 1.5
            let newHor = size - self.view.frame.size.width
            let newver = self.view.frame.size.height - size
            self.imageview.frame = CGRect(
                x: -(newHor/2),
                y: newver/2,
                width: size,
                height: size)
        })


        UIView.animate(withDuration: 0.9, animations: {
            self.imageview.alpha = 0
        }, completion: { done in
        if done {
            DispatchQueue.main.asyncAfter(deadline: .now()+0.3, execute: {
           
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                let secondVC = storyboard.instantiateViewController(identifier: "DisplayDetailsViewController") //CardViewController
                secondVC.modalPresentationStyle = .fullScreen
                secondVC.modalTransitionStyle = .crossDissolve
                self.present(secondVC, animated: true, completion: nil)
  
            })
            }
        })

    }
    
    
    
    
    
     
    
    
    
    
    
}
