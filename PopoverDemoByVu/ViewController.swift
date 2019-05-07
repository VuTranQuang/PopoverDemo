//
//  ViewController.swift
//  PopoverDemoByVu
//
//  Created by Vũ on 12/28/18.
//  Copyright © 2018 Vũ. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPopoverPresentationControllerDelegate {
    override func viewDidLoad() {
        super.viewDidLoad()
       
        // Do any additional setup after loading the view, typically from a nib.
    }
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) // func for popover
//    {
//        if segue.identifier == "popoverView"
//        {
//            let vc = segue.destination
//
//            vc.preferredContentSize = CGSize(width: 200, height: 300)
//
//            let controller = vc.popoverPresentationController
//
//            controller?.delegate = self
//            //you could set the following in your storyboard
//            controller?.sourceView = self.view
//            controller?.sourceRect = CGRect(origin: self.view.center, size: CGSize.init(width: 315, height: 230))
//            controller?.permittedArrowDirections = UIPopoverArrowDirection(rawValue: 0)
//
//        }
//    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination
        vc.preferredContentSize = CGSize(width: 400, height: 400)
        let pc = vc.popoverPresentationController
        pc?.sourceRect = CGRect(origin: self.view.center, size: CGSize.zero)
        pc?.delegate = self
    }

    func adaptivePresentationStyle(for controller: UIPresentationController) -> UIModalPresentationStyle {
        return .none
    }
    @IBAction func onClickedPassThroughButton(_ sender: Any) {
        title = "Pass Through Clicked"
    }

}

