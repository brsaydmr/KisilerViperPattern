//
//  AnasayfaRouter.swift
//  Kisiler ViperPattern
//
//  Created by Barış Aydemir on 22.08.2023.
//

import Foundation


class AnasayfaRouter : PresenterToRouterAnasayfaProtocol{
    static func createModul(ref: AnasayfaVC) {
        let presenter = AnasayfaPresenter()
        ref.anasayfaPresenterNesnesi = presenter
        
        ref.anasayfaPresenterNesnesi?.anasayfaInteractor = AnasayfaInteractor()
        ref.anasayfaPresenterNesnesi?.anasayfaView = ref
        
        ref.anasayfaPresenterNesnesi?.anasayfaInteractor?.anasayfaPresenter = presenter
    }
    
    
    
}
