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
        setupAddExpenseButton()
        setupTotal()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupAddExpenseButton() {
        let addExpenseButton = UIButton(frame: CGRect(x: self.frame.midX , y: self.frame.midY, width: self.frame.width / 1.5, height: self.frame.height / 10))
        addExpenseButton.setBackgroundImage(UIImage(named: "add-expense"), for: .normal)
        addExpenseButton.center = CGPoint(x: self.frame.midX, y: self.frame.height / 4)
        addExpenseButton.imageRect(forContentRect: CGRect(x: self.frame.midX , y: self.frame.midY, width: self.frame.width / 2, height: self.frame.height / 10))
        addExpenseButton.addTarget(self, action: #selector(handleAddExpenseButtonTapped),for: [.touchUpInside])
        addSubview(addExpenseButton)
    }
    
    private func setupTotal() {
        let totalLabel = UILabel(frame: CGRect(x: self.frame.midX , y: self.frame.midY, width: self.frame.width, height: self.frame.height / 8))
        totalLabel.backgroundColor = UIColor.systemPink
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

    @objc private func handleAddExpenseButtonTapped() {
        addSubview(blurEffect())
        
        let view = createAddExpenseView()
        view.frame = CGRect(x: self.frame.midX, y: 0, width: 0, height: 0)
        view.center = CGPoint(x: self.frame.midX, y: self.frame.height / 4)

        UIView.animate(withDuration: 0.5, animations: {
            let widthSubtract = (self.frame.width * 0.80) / 2
              view.frame = CGRect(x: self.frame.midX - widthSubtract, y: self.frame.midY, width: self.frame.width * 0.80, height: self.frame.height * 0.85)
            view.center = self.center
          })
    }
    
    private func createAddExpenseView() -> UIView {
        let view = createAddExpenseBackground()
        view.addSubview(createAmountTextField())
        view.addSubview(createEnterButton(view: view))
        return view
    }
    
    private func createAddExpenseBackground() -> UIImageView {
        let background = UIImage(named: "gradient2")
        var imageView : UIImageView!
        imageView = UIImageView(frame: CGRect(x: self.frame.midX, y: self.frame.midY, width: self.frame.width * 0.80, height: self.frame.height * 0.85))
        imageView.contentMode =  UIView.ContentMode.scaleAspectFill
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 9
        imageView.image = background
        imageView.center = center
        addSubview(imageView)
        return imageView
    }
    
    private func createEnterButton(view: UIView) -> UIButton {
//        let enterButton = UIButton(frame: CGRect(x: view.frame.midX , y: view.frame.midY, width: view.frame.width / 1.5, height: view.frame.height / 10))
//        enterButton.setBackgroundImage(UIImage(named: "enter"), for: .normal)
//        enterButton.center = CGPoint(x: view.frame.midX, y: view.frame.height / 4)
        
//        let enterButton = UIButton(frame: CGRect(x: view.frame.midX, y: view.frame.midY, width: view.frame.width / 1.5, height: view.frame.height / 10))
////        enterButton.center = CGPoint(x: view.frame.midX, y: view.frame.midY * 0.87)
//        enterButton.setBackgroundImage(UIImage(named: "enter"), for: .normal)

//        addExpenseButton.center = CGPoint(x: self.frame.midX, y: self.frame.height / 4)
//        addExpenseButton.imageRect(forContentRect: CGRect(x: self.frame.midX , y: self.frame.midY, width: self.frame.width / 2, height: self.frame.height / 10))
//        addExpenseButton.addTarget(self, action: #selector(handleAddExpenseButtonTapped),for: [.touchUpInside])
        
        let addExpenseButton = UIButton(frame:  CGRect(x: self.frame.midX, y: 0, width: 0, height: 0))
        addExpenseButton.setBackgroundImage(UIImage(named: "add-expense"), for: .normal)
//        addExpenseButton.center = CGPoint(x: self.frame.midX, y: self.frame.height / 4)
//        addExpenseButton.imageRect(forContentRect: CGRect(x: self.frame.midX , y: self.frame.midY, width: self.frame.width / 2, height: self.frame.height / 10))
        
        UIView.animate(withDuration: 1, animations: {
            addExpenseButton.frame = CGRect(x: self.frame.midX + 100 , y: self.frame.midY, width: self.frame.width / 1.5, height: self.frame.height / 10)
            addExpenseButton.center = CGPoint(x: self.frame.midX, y: self.frame.height - (self.frame.height * 0.25))
        })
        return addExpenseButton
        
//        return enterButton
    }
    
    func createAmountTextField() -> UITextField {
        let amountTextField = UITextField(frame: CGRect(x: self.frame.midX, y: self.frame.midY, width: self.frame.width * (0.4), height: self.frame.height * (1/20)))
        amountTextField.center = self.center
        return amountTextField
    }
    
    func blurEffect() -> UIVisualEffectView {
        let blurEffect = UIBlurEffect(style: .dark)
        let blurredEffectView = UIVisualEffectView(effect: blurEffect)
        blurredEffectView.frame = self.bounds
        return blurredEffectView
    }
}
