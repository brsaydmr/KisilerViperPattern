//
//  KisiKayitVC.swift
//  Kisiler ViperPattern
//
//  Created by Barış Aydemir on 22.08.2023.
//

import UIKit

class KisiKayitVC: UIViewController {
    @IBOutlet weak var tfKisiAd: UITextField!
    
    @IBOutlet weak var tfKisiTel: UITextField!
    
    var kisiKayitPresenterNesnesi:viewToPresenterKisiKayitProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        KisiKayitRouter.createModule(ref: self)

    }
  
    @IBAction func buttonKaydet(_ sender: Any) {
        
        if let ka = tfKisiAd.text,let kt = tfKisiTel.text {
            
            kisiKayitPresenterNesnesi?.ekle(kisi_ad: ka, kisi_tel: kt)
            
            if let navigationController = self.navigationController {
                navigationController.popToRootViewController(animated: true)
            }

        }
    }
    
    
}
