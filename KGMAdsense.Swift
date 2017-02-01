//
//  Created by K&
//  kenanatmaca.com
//  Copyright © 2017 Kenan Atmaca. All rights reserved.
//

import UIKit
import GoogleMobileAds

 struct AdsIds {
    var bannerId:String?
    var interstitalId:String?
}


class KGMAdsense {
    
    var ids:AdsIds = AdsIds()
    var bannerViewDelegate:GADBannerViewDelegate? = nil
    var interstitalViewDelegate:GADInterstitialDelegate? = nil
    
    init(bannerId:String?,intersistalId:String?) {
        
        ids.bannerId = bannerId ?? ""
        ids.interstitalId = intersistalId ?? ""
        
    }
    
    
    func loadBanner(adsBanner:GADBannerView,controller:UIViewController) {
        
        adsBanner.adUnitID = ids.bannerId!
        adsBanner.delegate = bannerViewDelegate
        adsBanner.rootViewController = controller
        let request:GADRequest = GADRequest()
        request.testDevices = [kGADSimulatorID]
        adsBanner.load(request)
        
    }
    

    func loadInterstital() -> GADInterstitial {
        
        let adsInterstital = GADInterstitial(adUnitID: ids.interstitalId!)
        adsInterstital.delegate = interstitalViewDelegate
        let req = GADRequest()
        req.testDevices = [kGADSimulatorID]
        adsInterstital.load(req)
        
        return adsInterstital
        
    }
    
    func showInterstital(intersistal:GADInterstitial,controller:UIViewController) {
        
        if intersistal.isReady {
            intersistal.present(fromRootViewController: controller)
        }
    }

}
