//
//  ViewController.swift
//  rodriguez.Yuritzy.Animations
//
//  Created by Yu on 20/05/22.
//

import UIKit
import Lottie

class ViewController: UIViewController {
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        createSegmentedControl()
    
    }
    func createSegmentedControl(){
        let segmentedControl = UISegmentedControl (items: ["Anim1","Anim2","Anim3"])
        segmentedControl.frame = CGRect(x: 10, y: 40, width:self.view.bounds.width - 20, height: 30)
        segmentedControl.addTarget(self, action: #selector(ViewController.indexChanged(_:)), for: .valueChanged)
        segmentedControl.layer.cornerRadius = 5.0
        self.view.addSubview(segmentedControl)
    
    }
    
    @objc func indexChanged(_ sender: UISegmentedControl) {
        
        let animacion = LoaderView()
        
        switch sender.selectedSegmentIndex{
            case 0:
                animacion.commonInit(name: "rocket")
                view.backgroundColor = .blue
                animacion.tag=3                               //You can use TAG to identify view objects in your application
                    if let uv = self.view.viewWithTag(1){
                        uv.removeFromSuperview()
                    }else if let uv = self.view.viewWithTag(2){
                        uv.removeFromSuperview()
                    }
            case 1:
                animacion.commonInit(name: "boxing")
                view.backgroundColor = .cyan
                animacion.tag=1
                    if let uv = self.view.viewWithTag(2){
                        uv.removeFromSuperview()
                    }else if let uv = self.view.viewWithTag(3){
                        uv.removeFromSuperview()
                    }
            case 2:
                animacion.commonInit(name: "love")
                view.backgroundColor = .white
                animacion.tag=2
                    if let uv = self.view.viewWithTag(1){
                        uv.removeFromSuperview()
                    } else if let uv = self.view.viewWithTag(3){
                        uv.removeFromSuperview()
                    }
            default:
                break
            }
        animacion.frame.size = CGSize(width: 400, height: 400)
        animacion.center = self.view.center
        view.addSubview(animacion)
        
        
       
        
       
       
        
        
    }

 
    
}
 

