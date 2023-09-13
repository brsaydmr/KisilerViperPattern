//
//  KisiKayitinteractor.swift
//  Kisiler ViperPattern
//
//  Created by Barış Aydemir on 22.08.2023.
//

import Foundation

class KisiKayitinteractor : presenterToInteractorKisiKayitProtocol {
    
    let db:FMDatabase?
    init() {
        let hedefYol = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        let veriTabaniURL = URL(fileURLWithPath: hedefYol).appendingPathComponent("rehber.sqlite")
        
        db = FMDatabase(path: veriTabaniURL.path)
    }
    
    func kisiEkle(kisi_ad: String, kisi_tel: String) {
        db?.open()
        
        do{
            try db!.executeUpdate("INSERT INTO kisiler (kisi_ad,kisi_tel) VALUES (?,?)", values: [kisi_ad,kisi_tel])

        }catch{
            print(error.localizedDescription)
        }
        
        db?.close()
    }
    
}
