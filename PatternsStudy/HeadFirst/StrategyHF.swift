//
//  StrategyHF.swift
//  PatternsStudy
//
//  Created by Кирилл Дутов on 09.01.2022.
//

import Foundation

class Duck {
    private var flyBehavior: FlyBehavior
    private var quackBehavior: QuackBehavior
    
    init(flyBehavior: FlyBehavior, quackBehavior: QuackBehavior) {
        self.flyBehavior = flyBehavior
        self.quackBehavior = quackBehavior
    }
    
    func update(flyBehavior: FlyBehavior, quackBehavior: QuackBehavior) {
        self.flyBehavior = flyBehavior
        self.quackBehavior = quackBehavior
    }
    
    func display() {}
    
    func performFly() {
        flyBehavior.fly()
    }
    
    func performQuack() {
        quackBehavior.quack()
    }
    
    func swim() {
        print("All ducks swim")
    }
}

protocol FlyBehavior {
    func fly()
}

class FlyWithWings: FlyBehavior {
    func fly() {
        print("I am flying")
    }
}

class FlyNoWay: FlyBehavior {
    func fly() {
        print("I can not fly")
    }
}

protocol QuackBehavior {
    func quack()
}

class Quack: QuackBehavior {
    func quack() {
        print("Quack")
    }
}

class MuteQuack: QuackBehavior {
    func quack() {
        print("<<Silence>>")
    }
}

class Squek: QuackBehavior {
    func quack() {
        print("Squek")
    }
}
