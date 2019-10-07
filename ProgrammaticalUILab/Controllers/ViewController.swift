//
//  ViewController.swift
//  ProgrammaticalUILab
//
//  Created by Angela Garrovillas on 10/7/19.
//  Copyright © 2019 Angela Garrovillas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //MARK: - Properties
    var color = Color.generateRandomRGBValues()
    var score = ScoreBoard()
    
    
    //MARK: - Buttons
    lazy var redButton: UIButton = {
        let button = UIButton()
        button.setTitle("Red", for: .normal)
        button.titleLabel?.textColor = .red
        button.backgroundColor = .red
        button.addTarget(self, action: #selector(buttonPressed(sender:)), for: .touchUpInside)
        return button
    }()
    lazy var greenButton: UIButton = {
        let button = UIButton()
        button.setTitle("Green", for: .normal)
        button.titleLabel?.textColor = .green
        button.backgroundColor = .green
        button.addTarget(self, action: #selector(buttonPressed(sender:)), for: .touchUpInside)
        return button
    }()
    lazy var blueButton: UIButton = {
        let button = UIButton()
        button.setTitle("Blue", for: .normal)
        button.titleLabel?.textColor = .blue
        button.backgroundColor = .blue
        button.addTarget(self, action: #selector(buttonPressed(sender:)), for: .touchUpInside)
        return button
    }()
    
    //MARK: - Labels
    lazy var scoreLabel: UILabel = {
        let label = UILabel()
        label.text = "Score:"
        return label
    }()
    lazy var highScoreLabel: UILabel = {
        let label = UILabel()
        label.text = "High Score:"
        return label
    }()
    lazy var infoLabel: UILabel = {
        let label = UILabel()
        label.text = "Guess the closest color!"
        return label
    }()
    
    //MARK: - ImageView
    lazy var colorView: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = self.color.changeToUIColor()
        return imageView
    }()
    
    //MARK: - Functions
    private func setupSubViews() {
        self.view.addSubview(redButton)
        redButton.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(greenButton)
        greenButton.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(blueButton)
        blueButton.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(scoreLabel)
        scoreLabel.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(highScoreLabel)
        highScoreLabel.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(infoLabel)
        infoLabel.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(colorView)
        colorView.translatesAutoresizingMaskIntoConstraints = false
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

