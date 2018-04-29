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
    var firstLabel: UILabel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstView = UIView(frame: CGRect(x: 30, y: 60, width: 200, height: 50))
        firstView?.backgroundColor = UIColor(red: 30 / 255, green: 123 / 255, blue: 90 / 255, alpha: 1)
        guard firstView != nil else {return}
        firstView?.layer.cornerRadius = 10
        view.addSubview(firstView!)
        
        firstLabel = UILabel(frame: CGRect(x: 0, y: firstView!.frame.maxY + 20 , width: view.frame.width, height: 50))
        firstLabel?.text = "Text"
        firstLabel?.numberOfLines = 1
        firstLabel?.textColor = UIColor.red
        firstLabel?.font = UIFont(name: "Chalkduster", size: 20)
        firstLabel?.textAlignment = .center
        view.addSubview(firstLabel!)
        

    }
}
