//
//  KisiDetayRouter.swift
//  Kisiler ViperPattern
//
//  Created by Barış Aydemir on 22.08.2023.
//

import Foundation

class KisiDetayRouter : presenterToRouterKisiDetayProtocol {
    
    static func createModule(ref: KisiDetayVC) {
        ref.kisiDetayPresenterNesnesi = KisiDetayPresenter()
        ref.kisiDetayPresenterNesnesi?.kisiDetayInteractor = KisiDetayinteractor()
    }
    
}
