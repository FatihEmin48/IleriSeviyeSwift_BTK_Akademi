//
//  UserClass.swift
//  IleriSeviyeSwift_BTK_Akademi
//
//  Created by Fatih Karahan on 19.06.2023.
//

import Foundation

class UserClass{
    
    var isim : String
    var yas : Int
    var meslek : String
    
    init(isim: String, yas: Int, meslek: String) {
        self.isim = isim
        self.yas = yas
        self.meslek = meslek
    }
    
    func yasiBirArttir(){
        self.yas += 1
    }
    
}
