//
//  VideoVC.swift
//  PartyRock
//
//  Created by Macbook Air on 5/3/17.
//  Copyright © 2017 David Ramirez. All rights reserved.
//

import UIKit

class VideoVC: UIViewController {
    @IBOutlet weak var webView: UIWebView!
    @IBOutlet weak var titleLBL: UILabel!


    private var _partyRock: PartyRock!
    
    var partyRock: PartyRock {
        get {
            return _partyRock
        } set {
            _partyRock = newValue
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLBL.text = partyRock.videoTitle
        webView.loadHTMLString(partyRock.videoURL, baseURL: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
