//
//  SingleSton.swift
//  PopoverDemoByVu
//
//  Created by Vũ on 12/29/18.
//  Copyright © 2018 Vũ. All rights reserved.
//

import UIKit
final class SingleSton {
    static let shared = SingleSton()
    private init () {
        
    }
    var stringg : String?
}
