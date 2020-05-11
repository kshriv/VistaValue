//
//  ViewController.swift
//  VistaValue
//
//  Created by Komal Shrivastava on 5/11/20.
//  Copyright © 2020 Komal Shrivastava. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var mainView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        assignbackground()
        for _ in 0...10 {
            setupCoin()
        }
    }
    
    func assignbackground(){
        let background = UIImage(named: "gradient")

        var imageView : UIImageView!
        imageView = UIImageView(frame: view.bounds)
        imageView.contentMode =  UIView.ContentMode.scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = background
        imageView.center = view.center
        view.addSubview(imageView)
        self.view.sendSubviewToBack(imageView)
    }

    func setupCoin() {
        //MARK: -first
        var image = UIImageView()
        image.tintColor = UIColor.blue
        image.backgroundColor = UIColor.blue
        image.frame = CGRect(x: 0.5 * (self.mainView.frame.width / 10) + (0 * (self.mainView.frame.width / 10)), y: -200, width: (self.mainView.frame.width / 10), height: (self.mainView.frame.width / 10))
        self.view.addSubview(image)
        
        UIView.animate(withDuration: 5, delay: 0, options: [.repeat], animations: {
            image.frame = CGRect(x: 0.5 * (self.view.frame.width / 10) + (0 * (self.view.frame.width / 10)), y: self.view.frame.midY * 2.2, width: (self.view.frame.width / 10), height: (self.view.frame.width / 10))
        }, completion: nil)
        
        //MARK: -second
        image = UIImageView()
        image.tintColor = UIColor.blue
        image.backgroundColor = UIColor.blue
        image.frame = CGRect(x: 0.5 * (self.mainView.frame.width / 10) + (2 * (self.mainView.frame.width / 10)), y: self.mainView.frame.height + 200, width: (self.mainView.frame.width / 10), height: (self.mainView.frame.width / 10))
        self.view.addSubview(image)
        
        UIView.animate(withDuration: 5, delay: 0, options: [.repeat], animations: {
            image.frame = CGRect(x:  0.5 * (self.mainView.frame.width / 10) + (2 * (self.mainView.frame.width / 10)), y: -200, width: (self.mainView.frame.width / 10), height: (self.mainView.frame.width / 10))
        }, completion: nil)
        
        //MARK: -third
        image = UIImageView()
        image.tintColor = UIColor.blue
        image.backgroundColor = UIColor.blue
        image.frame = CGRect(x: 0.5 * (self.mainView.frame.width / 10) + (4 * (self.mainView.frame.width / 10)), y: -200, width: (self.mainView.frame.width / 10), height: (self.mainView.frame.width / 10))
        self.mainView.addSubview(image)

        UIView.animate(withDuration: 5, delay: 0, options: [.repeat], animations: {
            image.frame = CGRect(x:  0.5 * (self.view.frame.width / 10) + (4 * (self.view.frame.width / 10)), y: self.view.frame.midY * 2.2, width: (self.view.frame.width / 10), height: (self.view.frame.width / 10))
        }, completion: nil)
        
        //MARK: -fourth
       image = UIImageView()
       image.tintColor = UIColor.blue
       image.backgroundColor = UIColor.blue
        image.frame = CGRect(x: 0.5 * (self.mainView.frame.width / 10) + (6 * (self.mainView.frame.width / 10)), y: self.mainView.frame.height + 200, width: (self.mainView.frame.width / 10), height: (self.mainView.frame.width / 10))
       self.view.addSubview(image)
       
       UIView.animate(withDuration: 5, delay: 0, options: [.repeat], animations: {
           image.frame = CGRect(x:  0.5 * (self.view.frame.width / 10) + (6 * (self.view.frame.width / 10)), y: -200, width: (self.view.frame.width / 10), height: (self.view.frame.width / 10))
       }, completion: nil)
        
        //MARK: -fifth
        image = UIImageView()
        image.tintColor = UIColor.blue
        image.backgroundColor = UIColor.blue
        image.frame = CGRect(x: 0.5 * (self.mainView.frame.width / 10) + (8 * (self.mainView.frame.width / 10)), y: -200, width: (self.mainView.frame.width / 10), height: (self.mainView.frame.width / 10))
        self.view.addSubview(image)

        UIView.animate(withDuration: 5, delay: 0, options: [.repeat], animations: {
            image.frame = CGRect(x:  0.5 * (self.mainView.frame.width / 10) + (8 * (self.mainView.frame.width / 10)), y: self.mainView.frame.midY * 2.2, width: (self.mainView.frame.width / 10), height: (self.mainView.frame.width / 10))
        }, completion: nil)
    
    }

}

