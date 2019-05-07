//
//  ViewController1.swift
//  PopoverDemoByVu
//
//  Created by Vũ on 12/28/18.
//  Copyright © 2018 Vũ. All rights reserved.
//

import UIKit

class ViewController1: UIViewController, UIPopoverPresentationControllerDelegate {

    @IBOutlet weak var popoverButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            let vc = segue.destination
            let pc = vc.popoverPresentationController
            pc?.sourceRect = CGRect(origin: self.view.center, size: CGSize.zero)
            pc?.delegate = self

}
        func adaptivePresentationStyle(for controller: UIPresentationController) -> UIModalPresentationStyle {
            return .none
            
    }
}
