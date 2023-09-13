//
//  KisiDetayVC.swift
//  Kisiler ViperPattern
//
//  Created by Barış Aydemir on 22.08.2023.
//

import UIKit

class KisiDetayVC: UIViewController {
    @IBOutlet weak var tfKisiAd: UITextField!
    
    @IBOutlet weak var tfKisiTel: UITextField!
    
    var kisiDetayPresenterNesnesi:viewToPresenterKisiDetayProtocol?
    
    var kisi:Kisiler?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let k = kisi {
            tfKisiAd.text = k.kisi_ad
            tfKisiTel.text = k.kisi_tel
        }
        
        KisiDetayRouter.createModule(ref: self)

    }
    

    @IBAction func buttonGuncelle(_ sender: Any) {
        
        if let ka = tfKisiAd.text,let kt = tfKisiTel.text,let k = kisi {

            kisiDetayPresenterNesnesi?.guncelle(kisi_id: k.kisi_id!, kisi_ad: ka, kisi_tel: kt)
            
            if let navigationController = self.navigationController {
                navigationController.popToRootViewController(animated: true)
            }
        }
    }
 
    
}
