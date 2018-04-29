//
//  programmaticController.swift
//  moreView
//
//  Created by christophe milliere on 29/04/2018.
//  Copyright © 2018 christophe milliere. All rights reserved.
//

import UIKit

class ProgrammaticController: UIViewController {
    var firstView: UIView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstView = UIView(frame: CGRect(x: 30, y: 60, width: 200, height: 50))
        firstView?.backgroundColor = UIColor(red: 30 / 255, green: 123 / 255, blue: 90 / 255, alpha: 1)
        guard firstView != nil else {return}
        firstView?.layer.cornerRadius = 10
        view.addSubview(firstView!)
        print("frame -> \(firstView!.frame)")
        print("bounds -> \(firstView!.bounds)")
        
        let secondView = UIView(frame: firstView!.frame)
        secondView.center.y += 100
        secondView.backgroundColor = UIColor.darkGray
        view.addSubview(secondView)
        
        let threeView = UIView(frame: firstView!.bounds)
        threeView.center.y +=  200
        threeView.backgroundColor = UIColor.red
        view.addSubview(threeView)
        
    }
}
