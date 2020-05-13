//
//  MainView.swift
//  VistaValue
//
//  Created by Komal Shrivastava on 5/12/20.
//  Copyright © 2020 Komal Shrivastava. All rights reserved.
//

import UIKit

class MainView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupAddExpense()
        setupTotal()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupAddExpense() {
        var addExpenseButton = UIButton(frame: CGRect(x: self.frame.midX , y: self.frame.midY, width: self.frame.width / 1.5, height: self.frame.height / 10))
        addExpenseButton.setBackgroundImage(UIImage(named: "add-expense"), for: .normal)
        addExpenseButton.center = CGPoint(x: self.frame.midX, y: self.frame.height / 4)
        addExpenseButton.imageRect(forContentRect: CGRect(x: self.frame.midX , y: self.frame.midY, width: self.frame.width / 2, height: self.frame.height / 10))
        addSubview(addExpenseButton)
    }
    
    func setupTotal() {
        var totalLabel = UILabel(frame: CGRect(x: self.frame.midX , y: self.frame.midY, width: self.frame.width, height: self.frame.height / 8))
        totalLabel.backgroundColor = UIColorFromHex(rgbValue: 0x5A7DDE, alpha: 0.7)
        totalLabel.center = CGPoint(x: self.frame.midX, y: self.frame.height / 1.2)
        totalLabel.text = "Total Expenses:"
        totalLabel.textAlignment = .center
        totalLabel.font = totalLabel.font.withSize(20)
        totalLabel.adjustsFontSizeToFitWidth = true
        totalLabel.minimumScaleFactor = 0.25
        totalLabel.numberOfLines = 0
        totalLabel.textColor = UIColor.white
        addSubview(totalLabel)
    }
    
    func UIColorFromHex(rgbValue:UInt32, alpha:Double=1.0)-> UIColor {
        let red = CGFloat((rgbValue & 0xFF0000) >> 16) / 256.0
        let green = CGFloat((rgbValue & 0xFF00) >> 8) / 256.0
        let blue = CGFloat(rgbValue & 0xFF) / 256.0

        return UIColor(red: red, green: green, blue: blue, alpha:CGFloat(alpha))
    }
    
    
}
