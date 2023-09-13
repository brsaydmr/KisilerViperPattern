//
//  KisiKayitPresenter.swift
//  Kisiler ViperPattern
//
//  Created by Barış Aydemir on 22.08.2023.
//

import Foundation

class KisiKayitPresenter : viewToPresenterKisiKayitProtocol {
    
    var kisiKayitInteractor: presenterToInteractorKisiKayitProtocol?
    
    func ekle(kisi_ad: String, kisi_tel: String) {
        kisiKayitInteractor?.kisiEkle(kisi_ad: kisi_ad, kisi_tel: kisi_tel)
    }
    
}
