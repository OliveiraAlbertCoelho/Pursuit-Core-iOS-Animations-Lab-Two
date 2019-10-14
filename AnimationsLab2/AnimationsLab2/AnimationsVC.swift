//
//  AnimationsVC.swift
//  AnimationsLab2
//
//  Created by albert coelho oliveira on 10/14/19.
//  Copyright © 2019 albert coelho oliveira. All rights reserved.
//

import UIKit

class AnimationsVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(buttonStack)
        constrainButtonStackView()
        addBallContraints()
        view.addSubview(actionsButtonStack)
        constrainActionButtonStackView()
    }
    lazy var linearButton: UIButton  = {
        let linearButton = UIButton()
        linearButton.setTitle("Linear", for: .normal)
        linearButton.setTitleColor(.blue, for: .normal)
        return linearButton
    }()
    lazy var easeInButton: UIButton  = {
        let easeInButton = UIButton()
        easeInButton.setTitle("EaseIn", for: .normal)
        easeInButton.setTitleColor(.blue, for: .normal)
        return easeInButton
    }()
    lazy var easeOutButton: UIButton  = {
        let easeOutButton = UIButton()
        easeOutButton.setTitle("EaseOut", for: .normal)
        easeOutButton.setTitleColor(.blue, for: .normal)
        return easeOutButton
    }()
    lazy var easeIneaseOutButton: UIButton  = {
        let easeIneaseOutButton = UIButton()
        easeIneaseOutButton.setTitle("EaseIneaseOut", for: .normal)
        easeIneaseOutButton.setTitleColor(.blue, for: .normal)
        return easeIneaseOutButton
    }()
    lazy var ball: UIImageView = {
        var ball = UIImageView()
        ball.image = UIImage(named: "Ball")!
        return ball
    }()
    lazy var secondBall: UIImageView = {
        var ball = UIImageView()
        ball.image = UIImage(named: "Ball")!
        return ball
    }()
    lazy var thirdBall: UIImageView = {
        var ball = UIImageView()
        ball.image = UIImage(named: "Ball")!
        return ball
    }()
    lazy var fourthBall: UIImageView = {
        var ball = UIImageView()
        ball.image = UIImage(named: "Ball")!
        
        return ball
    }()
    lazy var resetButton: UIButton = {
        var reset = UIButton()
        reset.setTitle("Reset", for: .normal)
        reset.setTitleColor(.blue, for: .normal)
        return reset
    }()
    lazy var animateButton: UIButton = {
           var animateButton = UIButton()
            animateButton.setTitleColor(.blue, for: .normal)
           animateButton.setTitle("Animate", for: .normal)
           return animateButton
       }()
    lazy var actionsButtonStack: UIStackView = {
          let buttonStack = UIStackView(arrangedSubviews: [resetButton,animateButton])
          buttonStack.axis = .horizontal
          buttonStack.alignment = .center
          buttonStack.distribution = .fillProportionally
          buttonStack.spacing = 5
          return buttonStack
      }()
    
    lazy var buttonStack: UIStackView = {
        let buttonStack = UIStackView(arrangedSubviews: [linearButton,easeInButton,easeOutButton,easeIneaseOutButton])
        buttonStack.axis = .horizontal
        buttonStack.alignment = .center
        buttonStack.distribution = .fillProportionally
        buttonStack.spacing = 5
        return buttonStack
    }()
    
    
    private func setUpBallOneConstraints(){
        view.addSubview(ball)
        ball.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            ballOneCenterYConstraint,
            ball.centerXAnchor.constraint(equalTo: self.linearButton.centerXAnchor, constant: 0),
            ball.widthAnchor.constraint(equalToConstant: 50),
            ball.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    lazy var ballOneCenterYConstraint: NSLayoutConstraint = {
        self.ball.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -200)
    }()
    private func setUpSecondBallOneConstraints(){
        view.addSubview(secondBall)
        secondBall.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            secondBallCenterYConstraint,
            secondBall.centerXAnchor.constraint(equalTo: self.easeInButton.centerXAnchor, constant: 30),
            secondBall.widthAnchor.constraint(equalToConstant: 50),
            secondBall.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    lazy var secondBallCenterYConstraint: NSLayoutConstraint = {
        self.secondBall.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -200)
    }()
    private func setUpThirdBallOneConstraints(){
        view.addSubview(thirdBall)
        thirdBall.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            thirdBallCenterYConstraint,
            thirdBall.centerXAnchor.constraint(equalTo: self.easeOutButton.centerXAnchor, constant: 30),
            thirdBall.widthAnchor.constraint(equalToConstant: 50),
            thirdBall.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    lazy var thirdBallCenterYConstraint: NSLayoutConstraint = {
        self.thirdBall.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -200)
    }()
    
    private func setUpFourthBallContraints(){
        view.addSubview(fourthBall)
        fourthBall.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            fourthBallCenterYConstraint,
            fourthBall.centerXAnchor.constraint(equalTo: self.easeIneaseOutButton.centerXAnchor, constant: 0),
            fourthBall.widthAnchor.constraint(equalToConstant: 50),
            fourthBall.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    lazy var fourthBallCenterYConstraint: NSLayoutConstraint = {
        self.fourthBall.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -200)
    }()
    
    private func addBallContraints(){
        setUpBallOneConstraints()
        setUpSecondBallOneConstraints()
        setUpThirdBallOneConstraints()
        setUpFourthBallContraints()
    }
    
    
    private func constrainButtonStackView() {
        buttonStack.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            buttonStack.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            buttonStack.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            buttonStack.heightAnchor.constraint(equalToConstant: 50),
            buttonStack.widthAnchor.constraint(equalTo: view.widthAnchor),
        ])
    }
    private func constrainActionButtonStackView() {
           actionsButtonStack.translatesAutoresizingMaskIntoConstraints = false
           NSLayoutConstraint.activate([
               actionsButtonStack.centerXAnchor.constraint(equalTo: view.centerXAnchor),
               actionsButtonStack.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 50),
               actionsButtonStack.heightAnchor.constraint(equalToConstant: 50),
               actionsButtonStack.widthAnchor.constraint(equalTo: view.widthAnchor),
           ])
       }
}
