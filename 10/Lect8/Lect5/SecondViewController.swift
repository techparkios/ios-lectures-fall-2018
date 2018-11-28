//
//  SecondViewController.swift
//  Lect5
//
//  Created by d.taraev on 28/11/2018.
//  Copyright © 2018 mail.ru. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var heightConstraint: NSLayoutConstraint!
    override func viewDidLoad() {
        super.viewDidLoad()

        let subView = UIView()
        subView.backgroundColor = .green
        subView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(subView)
        
        let guide = view.safeAreaLayoutGuide
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "|-[subView]-|", options: [], metrics: nil, views: ["subView": subView]))
        
        NSLayoutConstraint.activate([
            subView.topAnchor.constraint(equalTo: guide.topAnchor, constant: 100)
            ])
        
        heightConstraint = NSLayoutConstraint(item: subView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 150.0)
        subView.addConstraint(heightConstraint)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        self.heightConstraint.constant = 200.0
        UIView.animate(withDuration: 1.0) {
            
            self.view.layoutSubviews()
        }
    }
}
