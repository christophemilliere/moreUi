//
//  CycleAndFrameController.swift
//  moreView
//
//  Created by christophe milliere on 29/04/2018.
//  Copyright © 2018 christophe milliere. All rights reserved.
//

import UIKit

class CycleAndFrameController: UIViewController {

    @IBOutlet weak var viewFrameBounds: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Viewdidload")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewDidAppear")
        print("frame -> \(viewFrameBounds.frame)")
        print("bounds -> \(viewFrameBounds.bounds)")
        UIView.animate(withDuration: 2, animations: {
            self.viewFrameBounds.transform = CGAffineTransform(rotationAngle: CGFloat(Double.pi) / 82)
        }) { (success) in
            print("frame -> \(self.viewFrameBounds.frame)")
            print("bounds -> \(self.viewFrameBounds.bounds)")
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("viewDidDisappear")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
