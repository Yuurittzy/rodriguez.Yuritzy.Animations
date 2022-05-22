//
//  LoaderView.swift
//  rodriguez.Yuritzy.Animations
//
//  Created by Yu on 20/05/22.
//import Foundation
import UIKit
import Lottie

public class LoaderView: UIView {

    
    func commonInit(name : String) {
    let animationView = AnimationView(name: name)
    animationView.frame = CGRect(x: 0, y: 0, width: 700, height: 700)
    animationView.center = self.center
    animationView.animationSpeed = 0.5
    self.addSubview(animationView)
    animationView.play()
    animationView.translatesAutoresizingMaskIntoConstraints = false
    animationView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
    animationView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
    animationView.widthAnchor.constraint(equalToConstant: 360).isActive = true
    animationView.heightAnchor.constraint(equalToConstant: 300).isActive = true
}
}
