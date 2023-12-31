//
//  main.swift
//  IleriSeviyeSwift_BTK_Akademi
//
//  Created by Fatih Karahan on 19.06.2023.
//

import Foundation

// MARK: - Struct


//Struct -> İnheritance yok, Stack - filo(first in last out) (RAM), value type, immutable, daha hızlı, daha basit
//Class  -> İnheritance var, Heap - fifo(first in first out) (RAM), reference type, mutable

let fatihClass = UserClass(isim: "Fatih", yas: 22, meslek: "Öğrenci")

var fatihStruct = UserStruct(isim: "Fatih", yas: 22, meslek: "Öğrenci")

fatihClass.yas = 23
print(fatihClass.yas)

//fatihStruct.yas = 23 hat veriyor ilk let ile yaptığımızdan şimdi var'a çevirdik
fatihStruct.yas = 23
print(fatihStruct.yas)


//Referans ve Değer Farkı
let fatihClassKopyasi = fatihClass
var fatihStructKopyasi = fatihStruct

print(fatihClassKopyasi.yas)
print(fatihStructKopyasi.yas)

fatihStructKopyasi.yas = 24
fatihClassKopyasi.yas = 24

print(fatihClassKopyasi.yas)
print(fatihStructKopyasi.yas)

print(fatihClass.yas)//orijinalin yaşını değiştirmedik ama değişti
print(fatihStruct.yas)//orijinalin yaşı aynı kaldı

//reference type -> class
//kopyalama yapıldığında tek bir obje var 2 referans var

//value type -> struct
//kopyalama yapıldığında iki obje var

print(fatihClass.yas)
fatihClass.yasiBirArttir()
print(fatihClass.yas)

print(fatihStruct.yas)
fatihStruct.yasiBirArttir()
print(fatihStruct.yas)


// MARK: - Tuple

var benimTuple = (10,20)
print(benimTuple.0)

var benimTuple2 = (10,20,30,40)
print(benimTuple2.3)
benimTuple2.3 = 50
print(benimTuple2.3)

let benimTuple3 = ("Fatih", 22)
print(benimTuple3.0)

let benimTuple4 = ("Fatih", [1,2,3,4])
print(benimTuple4.1[2])

let benimNumaram : Int?

let benimOncedenBelirlenenTuple : (String, String)
benimOncedenBelirlenenTuple.0 = "Fatih"
benimOncedenBelirlenenTuple.1 = "Karahan"
print(benimOncedenBelirlenenTuple)

let yeniTuple = (isim:"Fatih", ikinciIsim: "Emin", soyisim: "Karahan")
print(yeniTuple)
print(yeniTuple.isim)


// MARK: - Guard Let

//Olmazsa ne yapacağını yazıyoruz

let numaraStringi = "5"

func inteCevirenIfLetFonksiyonu(string : String) -> Int{
    if let benimIntegerim = Int(string){
        return benimIntegerim
    } else {
        return 0
    }
}

print(inteCevirenIfLetFonksiyonu(string: numaraStringi))

func inteCevirenGuardLetFonksiyonu(string: String) -> Int{
    guard let benimIntegerim = Int(string) else { //Bunda yapamazsa direkt olumsuzu yazıyoruz
        return 0
    }
    return benimIntegerim
}
print(inteCevirenGuardLetFonksiyonu(string: numaraStringi))


// MARK: - Switch Case

let gunSayisi = 1
var gunStringi = ""

switch gunSayisi {
case 1:
    gunStringi = "Pazartesi"
case 2:
    gunStringi = "Salı"
case 3:
    gunStringi = "Çarşamba"
default:
    gunStringi = "Pazar"
}
print(gunStringi)


// MARK: - Breakpoint

var sayi =  5
print(sayi)
//Satırda sayının üzerine tıklarsak breakpoint oluşturmuş oluruz, Run edilirken bu satırda durur ilerisine geçmez
sayi = sayi + 1
print(sayi)
