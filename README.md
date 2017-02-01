# KGMAdsense
Easy ios admob

- Basic Example

```Swift
import UIKit
import GoogleMobileAds

class ViewController: UIViewController {
    
    @IBOutlet weak var adsBannerView: GADBannerView!
    var interstital:GADInterstitial!
    
    var Adsense:KGMAdsense!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      Adsense = KGMAdsense(bannerId: "ca-app-pub-9397207638938418/7454741245", intersistalId: "ca-app-pub-9975387379638398/9384874380")

      interstital = Adsense.loadInterstital()
        
      Adsense.loadBanner(adsBanner: adsBannerView, controller: self)
        
    }

   
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
     
        Adsense.showInterstital(intersistal: interstital, controller: self)
        interstital = Adsense.loadInterstital()
        
    }
  
}//
```
