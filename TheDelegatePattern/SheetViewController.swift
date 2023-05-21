//
//  SheetViewController.swift
//  TheDelegatePattern
//
//  Created by Afonso Lucas on 21/05/23.
//

import UIKit

class SheetViewController: UIViewController {
    // Increment button
    lazy var incrementButton: UIButton = {
        let frame = CGRect(x: view.bounds.midX - 100,
                           y: 140,
                           width: 200,
                           height: 60)
        
        let button = UIButton(frame: frame)
        button.backgroundColor = .black
        button.layer.cornerRadius = 16
        button.setTitle("Increment", for: .normal)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Setting up the view controller
        view.addSubview(incrementButton)
        view.backgroundColor = .cyan
        
        // Setting action to incrementButton
        incrementButton.addTarget(self,
                                  action: #selector(increment),
                                  for: .touchUpInside)
    }
    
    // Function that is called when incrementButton is pressed
    @objc
    func increment() {}
}
