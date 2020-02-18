//
//  LaunchAnimationView.swift
//  LottieAnimationTest2
//
//  Created by David Lin on 2/17/20.
//  Copyright © 2020 David Lin (Passion Proj). All rights reserved.
//

import UIKit

class MainView: UIView {

    public lazy var title: UILabel = {
        let label = UILabel()
        label.text = "Testing: This is LaunchAnimationView"
        return label
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder:coder)
        commonInit()
    }
    
    
    private func commonInit() {
        setupLabelConstraints()
    }
    
    private func setupLabelConstraints() {
        addSubview(title)
        title.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            title.centerYAnchor.constraint(equalTo: safeAreaLayoutGuide.centerYAnchor),
            title.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor)
        ])
    }

}
