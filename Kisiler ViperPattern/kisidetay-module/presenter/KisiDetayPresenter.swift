//
//  KisiDetayPresenter.swift
//  Kisiler ViperPattern
//
//  Created by Barış Aydemir on 22.08.2023.
//

import Foundation

class KisiDetayPresenter : viewToPresenterKisiDetayProtocol {
    
    
    var kisiDetayInteractor: presenterToInteractorKisiDetayProtocol?
    
    func guncelle(kisi_id: Int, kisi_ad: String, kisi_tel: String) {
        kisiDetayInteractor?.kisiGuncelle(kisi_id: kisi_id, kisi_ad: kisi_ad, kisi_tel: kisi_tel)
    }
    

    
}
