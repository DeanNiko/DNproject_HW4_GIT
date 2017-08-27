//
//  Cat.swift
//  DNproject_HW4_GIT
//
//  Created by Dean Nikolov on 8/25/17.
//  Copyright © 2017 Dean Nikolov. All rights reserved.
//

import UIKit

class Cat: NSObject {


    // MARK: Public Properties

    let eyesColor: UIColor
    var furLenght: Double
    let nickname: String
    let hasTail: Bool
    var weight: Double
    let teethCount: Int
    let gender: Gender
    let breed: String
    var speed: Double
    let legsCount: Int
    var lastAction: String


    // MARK: Private Properties

    private var hungry: Bool

    // MARK: Initializer

    init(eyesColor: UIColor,
         furLenght: Double,
         nickname: String,
         hasTail: Bool,
         weight: Double,
         teethCount: Int,
         gender: Gender,
         breed: String,
         speed: Double = 13,
         legsCount: Int = 4,
         hungry: Bool = true,
         lastAction: String = "Did nothing") {

        self.eyesColor = eyesColor
        self.furLenght = furLenght
        self.nickname = nickname
        self.hasTail = hasTail
        self.weight = weight
        self.teethCount = teethCount
        self.gender = gender
        self.breed = breed
        self.speed = speed
        self.legsCount = legsCount
        self.hungry = hungry
        self.lastAction = lastAction


    }

    // MARK: Public Methods

    func run(changeSpeed: Double) {
        speed += changeSpeed
        decreaseWeight()

        setHungry(isHungry: true)
        lastAction = "Ran"
    }

    func eat(food: Double) {
        let times = Int(food / 2)

        for _ in 0..<times {
            growFur()
            increaseWeight()
        }

        setHungry(isHungry: false)
        lastAction = "Ate"
    }


    func isHungry() -> Bool {
        return hungry
    }

    func groomingCat() {
        furLenght /= 1.5
    }

    // MARK: Private Methods

    private func decreaseWeight() {
        weight -= 0.5
    }

    private func growFur() {
        furLenght += 0.2
    }

    private func increaseWeight() {
        weight += 0.5
    }
    
    private func setHungry(isHungry: Bool) {
        hungry = isHungry
    }
}
