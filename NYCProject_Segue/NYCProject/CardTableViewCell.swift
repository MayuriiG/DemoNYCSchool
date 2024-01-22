//
//  CardTableViewCell.swift
//  NYCProject
//
//  Created by Mayurii Gajbhiye on 21/01/24.
//

import UIKit

class CardTableViewCell: UITableViewCell {

    
    @IBOutlet weak var conView: UIView!
    @IBOutlet weak var sNameLbl: UILabel!
    @IBOutlet weak var rankingLbl: UILabel!
    @IBOutlet weak var scoreView: UIView!
    @IBOutlet weak var scoreLbl: UILabel!
    
    @IBOutlet weak var writingLbl: UILabel!
    @IBOutlet weak var readingLbl: UILabel!
    @IBOutlet weak var mathsLbl: UILabel!
    
    @IBOutlet weak var writingScoreLbl: UILabel!
    @IBOutlet weak var readingScoreLbl: UILabel!
    @IBOutlet weak var mathsScoreLbl: UILabel!
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        animation()
   }
   
   
   
   func animation (){
       
       conView.layer.cornerRadius = 15
       conView.layer.masksToBounds = true
       conView.layer.borderWidth = 1
       conView.layer.borderColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)

       scoreView.layer.cornerRadius = 40;
       scoreView.layer.masksToBounds = true;

   }
   
   

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
