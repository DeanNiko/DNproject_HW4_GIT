//
//  ViewController.swift
//  DNproject_HW4_GIT
//
//  Created by Dean Nikolov on 8/25/17.
//  Copyright © 2017 Dean Nikolov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let superDuperCat = Cat(eyesColor: UIColor.green, furLenght: 2.1, nickname: "Rufus", hasTail: false, weight: 7, teethCount: 30, gender: Gender.male, breed: "american bobtail")

    @IBOutlet weak var IsHungryLable: UILabel!
    @IBOutlet weak var LastActionLable: UILabel!
    @IBOutlet weak var WeightLable: UILabel!
    @IBOutlet weak var FurLenght: UILabel!

    


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.


        print(superDuperCat.furLenght)
        print(superDuperCat.hasTail)
        //        print(superDuperCat.description)

        superDuperCat.run(changeSpeed: 9.0)
        print(superDuperCat.speed)

        superDuperCat.eat(food: 0.2)

        reloudUI()

    }

    func reloudUI() {
        IsHungryLable.text = "\(superDuperCat.isHungry())"

        LastActionLable.text = superDuperCat.lastAction

        WeightLable.text = "\(superDuperCat.weight)"

        FurLenght.text = "\(superDuperCat.furLenght)"
    }

    @IBAction func eatButton(_ sender: UIButton) {
        superDuperCat.eat(food: 5.1)
        reloudUI()
    }

    @IBAction func runButton(_ sender: UIButton) {
        superDuperCat.run(changeSpeed: 13)
        reloudUI()
    }

    @IBAction func furCutButton(_ sender: UIButton) {
        superDuperCat.groomingCat()
        reloudUI()
    }

    func maleOrFemale(gender: Gender) {
        switch gender {
        case.female:
            print("Female")
        case.male:
            print("Male")
        default:
            print("ERROR YOU NEED TO PROVIDE HENDLER FOR NEW CASE")
        }
    }



    //Создать класс (любой: часы, телевизор, ноутбук, мотоцикл, трактор, самолет) который будет иметь 5 проперти (1 из них приватный) и минимум 3 метода (один из которых приватный должен быть).                                                             Во вью контролере создать экземпляр данного класса и вызывать эти методы. В консоль принтить то что делают функции данного экземпляра.
    
    
    
    
    
}

