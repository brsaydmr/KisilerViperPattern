//
//  KisiDetayProtocols.swift
//  Kisiler ViperPattern
//
//  Created by Barış Aydemir on 22.08.2023.
//

import Foundation

protocol viewToPresenterKisiDetayProtocol {
    
    var kisiDetayInteractor:presenterToInteractorKisiDetayProtocol? {get set}
    func guncelle(kisi_id:Int,kisi_ad:String,kisi_tel:String)

}

protocol presenterToInteractorKisiDetayProtocol {
    
    func kisiGuncelle(kisi_id:Int,kisi_ad:String,kisi_tel:String)
    
}

protocol presenterToRouterKisiDetayProtocol {
    
    static func createModule(ref:KisiDetayVC)
    
}
