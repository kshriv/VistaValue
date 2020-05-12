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
    var backgroundView: CoinsView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupBackgroundView()
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
    }

}

//Animations
extension ViewController {
    
    private func setupBackgroundView() {
        backgroundView = CoinsView(frame: view.frame)
        view.insertSubview(backgroundView, at: 0)
    }
}

