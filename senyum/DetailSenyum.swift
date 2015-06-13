//
//  DetailSenyum.swift
//  senyum
//
//  Created by nevda on 13/6/15.
//  Copyright (c) 2015 com.deehan. All rights reserved.
//

import Foundation
import UIKit

class DetailSenyumViewController : UIViewController {
    @IBOutlet weak var senyumLabel: UILabel!
    
    var senyum = "👽"
    override func viewDidLoad() {
        self.senyumLabel.text = self.senyum;
    }
    
}
