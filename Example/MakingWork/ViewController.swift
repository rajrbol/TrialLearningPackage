//
//  ViewController.swift
//  MakingWork
//
//  Created by rajrbol on 06/23/2022.
//  Copyright (c) 2022 rajrbol. All rights reserved.
//

import UIKit
import MakingWork

class ViewController: UIViewController {
    
    private lazy var lazyView: UIView = {
        let newView = UIView()
        newView.translatesAutoresizingMaskIntoConstraints = false
        return newView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.addSubview(lazyView)
        NSLayoutConstraint.activate([
            lazyView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            lazyView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            lazyView.heightAnchor.constraint(equalToConstant: 100),
            lazyView.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width / 2)
        ])
        lazyView.backgroundColor = .orange
        lazyView.addShadow(cornerRadius: 13, shadowColor: .blue, shadowOffset: CGSize(width: 1, height: 1), shadowOpacity: 0.3, shadowRadius: 6)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

