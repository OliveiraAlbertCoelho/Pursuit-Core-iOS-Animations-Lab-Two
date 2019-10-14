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
        addSubViews()
        constrainButtons()
    }
    lazy var linearButton: UIButton  = {
        let linearButton = UIButton()
        linearButton.setTitle("Linear", for: .normal)
        linearButton.setTitleColor(.blue, for: .normal)
        return linearButton
    }()
    lazy var easeInButton: UIButton  = {
        let easeInButton = UIButton()
        easeInButton.setTitle("easeIn", for: .normal)
        easeInButton.setTitleColor(.blue, for: .normal)
        return easeInButton
    }()
    lazy var easeOutButton: UIButton  = {
        let easeOutButton = UIButton()
        easeOutButton.setTitle("easeOut", for: .normal)
        easeOutButton.setTitleColor(.blue, for: .normal)
        return easeOutButton
    }()
    lazy var easeIneaseOutButton: UIButton  = {
        let easeIneaseOutButton = UIButton()
        easeIneaseOutButton.setTitle("easeIneaseOut", for: .normal)
        easeIneaseOutButton.setTitleColor(.blue, for: .normal)
        return easeIneaseOutButton
    }()
    lazy var ball: UIImageView = {
        var ball = UIImageView()
        ball.image = UIImage(named: "Ball")!
        return ball
    }()
    lazy var secondBall: UIView = {
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
    
    lazy var buttonStack: UIStackView = {
        let buttonStack = UIStackView()
        buttonStack.axis = .horizontal
        buttonStack.alignment = .center
        buttonStack.distribution = .fillProportionally
        buttonStack.spacing = 2
        
        return buttonStack
    }()
    
    //    lazy var ballHeightConstaint: NSLayoutConstraint = {
    //        ball.heightAnchor.constraint(equalToConstant: 200)
    //       }()
    //       lazy var ballWidthConstraint: NSLayoutConstraint = {
    //        ball.widthAnchor.constraint(equalToConstant: 200)
    //       }()
    //       lazy var ballCenterXConstraint: NSLayoutConstraint = {
    //           ball.centerXAnchor.constraint(equalTo: view.centerXAnchor)
    //       }()
    //       lazy var ballCenterYConstraint: NSLayoutConstraint = {
    //           ball.centerYAnchor.constraint(equalTo: view.centerYAnchor)
    //       }()
    private func addSubViews(){
        addViewstoButtonStack()
        view.addSubview(buttonStack)
    }
    private func addViewstoButtonStack (){
        buttonStack.addSubview(linearButton)
        buttonStack.addSubview(easeInButton)
        buttonStack.addSubview(easeOutButton)
        buttonStack.addSubview(easeIneaseOutButton)
    }
    private func constrainButtons(){
        constrainLinearButton()
        constrainEaseIn()
        constrainEaseOut()
        constrainLeftButton()
        constrainButtonStackView()
    }
    private func constrainLinearButton() {
        linearButton.translatesAutoresizingMaskIntoConstraints = false
        linearButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        linearButton.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
    }
    
    private func constrainEaseIn() {
        easeInButton.translatesAutoresizingMaskIntoConstraints = false
        easeInButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        easeInButton.leadingAnchor.constraint(equalTo: linearButton.trailingAnchor).isActive = true
    }
    private func constrainEaseOut() {
        easeOutButton.translatesAutoresizingMaskIntoConstraints = false
        easeOutButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        easeOutButton.leadingAnchor.constraint(equalTo: easeInButton.trailingAnchor).isActive = true
    }
    private func constrainLeftButton() {
        easeIneaseOutButton.translatesAutoresizingMaskIntoConstraints = false
        easeIneaseOutButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        easeIneaseOutButton.leadingAnchor.constraint(equalTo: easeOutButton.trailingAnchor).isActive = true
    }
    
    private func constrainButtonStackView() {
        buttonStack.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            
            buttonStack.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            buttonStack.bottomAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            buttonStack.heightAnchor.constraint(equalToConstant: 50),
            buttonStack.widthAnchor.constraint(equalTo: view.widthAnchor),
        ])
    }
}
