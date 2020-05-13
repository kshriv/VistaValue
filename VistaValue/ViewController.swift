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
    var backgroundView: BackgroundView!
    var interactiveView: MainView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupMainView()
        setupBackgroundView()
    }
}

//Sets up background
extension ViewController {
    
    private func setupBackgroundView() {
        backgroundView = BackgroundView(frame: view.frame)
        view.insertSubview(backgroundView, at: 0)
    }
    
    private func setupMainView() {
        interactiveView = MainView(frame: view.frame)
        view.insertSubview(interactiveView, at: 0)
    }
}

