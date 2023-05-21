//
//  MainViewController.swift
//  TheDelegatePattern
//
//  Created by Afonso Lucas on 21/05/23.
//

import UIKit

class MainViewController: UIViewController, IncrementValueDelegate {
    // Counter value
    private var value: Int = 0
    
    // Counter label view
    lazy var counterLabel: UILabel = {
        let frame = CGRect(x: view.bounds.midX - 50,
                           y: view.bounds.midY - 30,
                           width: 100,
                           height: 60)
        
        let label = UILabel(frame: frame)
        label.text = String(value)
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 64, weight: .bold)
        return label
    }()
    
    // Show Button
    lazy var navigateButton: UIButton = {
        let frame = CGRect(x: view.bounds.midX - 100,
                           y: view.bounds.maxY - 140,
                           width: 200,
                           height: 60)
        
        let button = UIButton(frame: frame)
        button.backgroundColor = .black
        button.setTitle("Show", for: .normal)
        button.layer.cornerRadius = 16
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Setting up the view controller
        view.backgroundColor = .white
        view.addSubview(counterLabel)
        view.addSubview(navigateButton)
        
        // Setting action to navigateButton
        navigateButton.addTarget(self,
                                 action: #selector(navigate),
                                 for: .touchUpInside)
    }
    
    // Function that is called when navigateButton is pressed
    @objc
    private func navigate(_ sender: UIButton) {
        // Createing the control modal
        let controlViewController = SheetViewController()

        // Passing delegate reference to controlViewController
        controlViewController.delegate = self

        // Presenting it
        present(controlViewController, animated: true)
    }
    
    func increment() {
        // Incrementing value
        value += 1

        // Passing value to counterLabel
        counterLabel.text = String(value)
    }
}
