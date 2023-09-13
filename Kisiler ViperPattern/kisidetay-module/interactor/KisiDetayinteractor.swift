//
//  KisiDetayinteractor.swift
//  Kisiler ViperPattern
//
//  Created by Barış Aydemir on 22.08.2023.
//

import Foundation

class KisiDetayinteractor : presenterToInteractorKisiDetayProtocol {
    
    let db:FMDatabase?
    init() {
        let hedefYol = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        let veriTabaniURL = URL(fileURLWithPath: hedefYol).appendingPathComponent("rehber.sqlite")
        
        db = FMDatabase(path: veriTabaniURL.path)
    }
    
    func kisiGuncelle(kisi_id: Int, kisi_ad: String, kisi_tel: String) {
        db?.open()
        
        do{
            try db!.executeUpdate("UPDATE kisiler SET kisi_ad = ? , kisi_tel = ? WHERE kisi_id = ?", values: [kisi_ad,kisi_tel,kisi_id])
        }catch{
            print(error.localizedDescription)
        }
        
        db?.close()
    }
    
    
}

