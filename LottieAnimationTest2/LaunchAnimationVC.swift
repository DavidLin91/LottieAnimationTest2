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

  private var launchAnimationView = LaunchAnimationView()
    private var animationView = AnimationView()
    
    
    override func loadView() {
       view = launchAnimationView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    }


    override func viewDidAppear(_ animated: Bool) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2) {
            self.runLottieAnimation()
        }
    }
    
    
    func runLottieAnimation() {
        
    }
    
    
    
    
    

}
