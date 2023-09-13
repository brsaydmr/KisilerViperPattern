//
//  AnasayfaPresenter.swift
//  Kisiler ViperPattern
//
//  Created by Barış Aydemir on 22.08.2023.
//

import Foundation

class AnasayfaPresenter : ViewToPresenterAnasayfaProtocol{
    
    var anasayfaView: PresenterToViewAnasayfaProtocol?
    var anasayfaInteractor: PresenterToInteractorAnasayfaProtocol?
    
    func kisileriYukle() {
        anasayfaInteractor?.tumKisileriAl()
    }
    
    func ara(aramaKelimesi: String) {
        anasayfaInteractor?.kisiAra(aramaKelimesi: aramaKelimesi)
    }
    
    func sil(kisi_id: Int) {
        anasayfaInteractor?.kisiSil(kisi_id: kisi_id)
    }
    
}

extension AnasayfaPresenter : InteractorToPresenterAnasayfaProtocol {
    func presenteraVeriGonder(kisilerListesi: Array<Kisiler>) {
        anasayfaView?.vieweVeriGonder(kisilerListesi: kisilerListesi)
    }
    
     
}
