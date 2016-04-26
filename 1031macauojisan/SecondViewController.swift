//
//  SecondViewController.swift
//  1031macauojisan
//
//  Created by 20150301 on 2015/11/02.
//  Copyright © 2015年 ******. All rights reserved.
//

import UIKit
import GoogleMobileAds

class SecondViewController: UIViewController, GADBannerViewDelegate {
    
    // AdMob ID を入れてください
    let AdMobID = "ca-app-pub-****************************"
    let TEST_DEVICE_ID = "********************************"
    let AdMobTest:Bool = true
    let SimulatorTest:Bool = false    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var admobView: GADBannerView = GADBannerView()
        admobView = GADBannerView(adSize:kGADAdSizeBanner)
        admobView.frame.origin = CGPointMake(0, self.view.frame.size.height - admobView.frame.height)
        
        admobView.frame.size = CGSizeMake(self.view.frame.width, admobView.frame.height)
        admobView.adUnitID = AdMobID
        admobView.delegate = self
        admobView.rootViewController = self
        
        let admobRequest:GADRequest = GADRequest()
        
        if AdMobTest {
            if SimulatorTest {
                admobRequest.testDevices = [kGADSimulatorID]
            }
            else {
                admobRequest.testDevices = [TEST_DEVICE_ID]
            }
            
        }
        
        admobView.loadRequest(admobRequest)
        
        self.view.addSubview(admobView)
    }
    
    
    
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(false)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
