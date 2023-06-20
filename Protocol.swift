//
//  main.swift
//  Protocol
//
//  Created by Fatih Karahan on 20.06.2023.
//

import Foundation

protocol Running {
    func myRun()
}

class Animal {
    func running(){
        print("running")
    }
}

class Dog : Running {
    func myRun() {
        print("Running (Protocol)")
    }
}

let barley = Dog()
barley.myRun()

class Cat : Animal {
    
}

let cat = Cat()
cat.running()

class Turtle : Animal , Running{
    func myRun() {
        print("turtle dont run")
    }
}

let leonardo = Turtle()//Normalde kaplumbağa koşsun istemiyoruz fakat classdan inheritance yaptığımızdan koşma geliyor
leonardo.myRun()

struct  Bird : Running{
    func myRun() {
        print("Bird can run and fly")
    }
}

let cibi = Bird()
cibi.myRun()
