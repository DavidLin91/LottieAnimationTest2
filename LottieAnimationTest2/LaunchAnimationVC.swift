//
//  LaunchAnimationVC.swift
//  LottieAnimationTest2
//
//  Created by David Lin on 2/17/20.
//  Copyright © 2020 David Lin (Passion Proj). All rights reserved.
//

import UIKit
import Lottie

class LaunchAnimationVC: UIViewController {

    private var mainView = MainView()
    private var animationView = AnimationView()
    
    
    override func loadView() {
       view = mainView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    }


    override func viewWillAppear(_ animated: Bool) {
        self.runLottieAnimation()
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 3) {
            self.removeAnimationScreen()
        }
    }


    func runLottieAnimation() {
        view.addSubview(animationView)
        animationView.startAnimation()
    }


    func removeAnimationScreen() {
        animationView.removeFromSuperview()
    }


    
    

}
