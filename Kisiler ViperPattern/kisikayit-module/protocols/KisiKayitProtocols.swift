//
//  KisiKayitProtocols.swift
//  Kisiler ViperPattern
//
//  Created by Barış Aydemir on 22.08.2023.
//

import Foundation

protocol viewToPresenterKisiKayitProtocol {
    
    var kisiKayitInteractor:presenterToInteractorKisiKayitProtocol? {get set}
    func ekle(kisi_ad:String,kisi_tel:String)

}

protocol presenterToInteractorKisiKayitProtocol {
    
    func kisiEkle(kisi_ad:String,kisi_tel:String)
    
}

protocol presenterToRouterKisiKayitProtocol {
    
    static func createModule(ref:KisiKayitVC)
    
}
