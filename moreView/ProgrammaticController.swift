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
    var firstButton: UIButton?
    var firstIv: UIImageView?
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstView = UIView(frame: CGRect(x: 30, y: 60, width: 200, height: 50))
        firstView?.backgroundColor = UIColor(red: 30 / 255, green: 123 / 255, blue: 90 / 255, alpha: 1)
        guard firstView != nil else {return}
        firstView?.layer.cornerRadius = 10
        scrollView.addSubview(firstView!)
        
        firstLabel = UILabel(frame: CGRect(x: 0, y: firstView!.frame.maxY + 20 , width: view.frame.width, height: 50))
        firstLabel?.text = "Text"
        firstLabel?.numberOfLines = 1
        firstLabel?.textColor = UIColor.red
        firstLabel?.font = UIFont(name: "Chalkduster", size: 20)
        firstLabel?.textAlignment = .center
        scrollView.addSubview(firstLabel!)
        
        let rectButton = CGRect(x: view.frame.width / 2 - 75, y: firstLabel!.frame.maxY + 20, width: 150, height: 40)
        firstButton = UIButton(frame: rectButton)
        firstButton?.setTitle("Appuyer", for: .normal)
        firstButton?.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        firstButton?.tintColor = UIColor.white
        firstButton?.backgroundColor = UIColor.black
        firstButton?.layer.borderColor = UIColor.white.cgColor
        
        scrollView.addSubview(firstButton!)
        
        firstButton?.addTarget(self, action: #selector(actionButton), for: .touchUpInside)
        let largeur = view.frame.width - 60
        let rectIv = CGRect(x: 30, y: (view.frame.height / 2) - (largeur / 2), width: largeur, height: largeur)
        firstIv = UIImageView(frame: rectIv)
        firstIv?.image = UIImage(named: "skull-apple2")
        firstIv?.contentMode = .scaleAspectFill
        firstIv?.clipsToBounds = true
        
        firstIv!.layer.cornerRadius = firstIv!.frame.width / 2
        firstIv!.isUserInteractionEnabled = true
        firstIv?.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(changeImage)))
        scrollView.addSubview(firstIv!)
//        scrollView.sendSubview(toBack: firstIv!)
        scrollView.bringSubview(toFront: firstButton!)
        
        let colors: [UIColor] = [.red, .black, .blue, .brown]
        var max: CGFloat = (firstIv?.frame.maxY)!
        
        for color in colors {
            print(color)
            let viewColor = UIView(frame: CGRect(x: 0, y: max + 5, width: 100, height: 100))
            viewColor.backgroundColor = color
            scrollView.addSubview(viewColor)
            max = view.frame.maxY
        }
        
        scrollView.contentSize = CGSize(width: view.frame.width, height: max + 100)
    }
    
    @objc func changeImage(){
        firstIv?.image = UIImage(named: "skull-apple")
    }
    
    @objc func actionButton(){
        print("coucou button")
    }
}
