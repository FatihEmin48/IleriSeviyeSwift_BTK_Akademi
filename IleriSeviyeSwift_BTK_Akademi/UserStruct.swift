//
//  UserStruct.swift
//  IleriSeviyeSwift_BTK_Akademi
//
//  Created by Fatih Karahan on 19.06.2023.
//

import Foundation

struct UserStruct {
    
    var isim : String
    var yas : Int
    var meslek : String
    
    /*
    func yasiBirArttir(){
        self.yas += 1
    }
     */ //Bu hata veriyor classın aksine ama çözümü var
    mutating func yasiBirArttir(){
        self.yas += 1
    }
    
    //mutating = structın içinden değer değiştirebilen fonksiyonlar
    
}
