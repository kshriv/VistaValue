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
        setupBackground()
    }
    
    func setupBackground(){
        let background = UIImage(named: "gradient")
        var imageView : UIImageView!
        imageView = UIImageView(frame: self.view.bounds)
        imageView.contentMode =  UIView.ContentMode.scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = background
        imageView.center = view.center
        view.addSubview(imageView)
        self.view.sendSubviewToBack(imageView)
        setupCoin()
    }

    func setupCoin() {
        //MARK: -first
        var image = UIImageView()
        image.image = UIImage(named: "coin")
        image.frame = CGRect(x: 0.5 * (self.mainView.frame.width / 10) + (0 * (self.mainView.frame.width / 10)), y: -200, width: (self.mainView.frame.width / 10), height: (self.mainView.frame.width / 10))
        self.view.addSubview(image)
        
        UIView.animate(withDuration: 5, delay: 2, options: [.repeat, .curveEaseIn], animations: {
            image.frame = CGRect(x: 0.5 * (self.view.frame.width / 10) + (0 * (self.view.frame.width / 10)), y: self.view.frame.midY * 2.2, width: (self.view.frame.width / 10), height: (self.view.frame.width / 10))
        }, completion: nil)
        
        //MARK: -second
        image = UIImageView()
        image.image = UIImage(named: "coin")
        image.frame = CGRect(x: 0.5 * (self.mainView.frame.width / 10) + (2 * (self.mainView.frame.width / 10)), y: -200, width: (self.mainView.frame.width / 10), height: (self.mainView.frame.width / 10))
        self.view.addSubview(image)
        
        UIView.animate(withDuration: 5, delay: 1, options: [.repeat, .curveEaseIn], animations: {
            image.frame = CGRect(x:  0.5 * (self.mainView.frame.width / 10) + (2 * (self.mainView.frame.width / 10)), y: self.view.frame.midY * 2.2, width: (self.mainView.frame.width / 10), height: (self.mainView.frame.width / 10))
        }, completion: nil)
        
        //MARK: -third
        image = UIImageView()
        image.image = UIImage(named: "coin")
        image.frame = CGRect(x: 0.5 * (self.mainView.frame.width / 10) + (4 * (self.mainView.frame.width / 10)), y: -200, width: (self.mainView.frame.width / 10), height: (self.mainView.frame.width / 10))
        self.mainView.addSubview(image)

        UIView.animate(withDuration: 5, delay: 3, options: [.repeat, .curveEaseIn], animations: {
            image.frame = CGRect(x:  0.5 * (self.view.frame.width / 10) + (4 * (self.view.frame.width / 10)), y: self.view.frame.midY * 2.2, width: (self.view.frame.width / 10), height: (self.view.frame.width / 10))
        }, completion: nil)
        
        //MARK: -fourth
       image = UIImageView()
       image.image = UIImage(named: "coin")
        image.frame = CGRect(x: 0.5 * (self.mainView.frame.width / 10) + (6 * (self.mainView.frame.width / 10)), y: -200, width: (self.mainView.frame.width / 10), height: (self.mainView.frame.width / 10))
       self.view.addSubview(image)
       
        UIView.animate(withDuration: 5, delay: 0.5, options: [.repeat, .curveEaseIn], animations: {
           image.frame = CGRect(x:  0.5 * (self.view.frame.width / 10) + (6 * (self.view.frame.width / 10)), y: self.view.frame.midY * 2.2 , width: (self.view.frame.width / 10), height: (self.view.frame.width / 10))
       }, completion: nil)
        
        //MARK: -fifth
        image = UIImageView()
        image.image = UIImage(named: "coin")
        image.frame = CGRect(x: 0.5 * (self.mainView.frame.width / 10) + (8 * (self.mainView.frame.width / 10)), y: -200, width: (self.mainView.frame.width / 10), height: (self.mainView.frame.width / 10))
        self.view.addSubview(image)

        UIView.animate(withDuration: 5, delay: 0, options: [.repeat], animations: {
            image.frame = CGRect(x:  0.5 * (self.mainView.frame.width / 10) + (8 * (self.mainView.frame.width / 10)), y: self.mainView.frame.midY * 2.2, width: (self.mainView.frame.width / 10), height: (self.mainView.frame.width / 10))
        }, completion: nil)
    
    }

}

