//
//  PatternsStudyTests.swift
//  PatternsStudyTests
//
//  Created by Кирилл Дутов on 09.01.2022.
//

import XCTest
@testable import PatternsStudy

class PatternsStudyTests: XCTestCase {

    func testStrategyRG() {
        let context = Context(strategy: ConcreateStrategyA())
        print("Client: Strategy is set to normal sorting.\n")
        context.doSomethingLogic()
        
        print("\nClient: Strategy is set to reverse sorting")
        context.update(strategy: ConcreateStrategyB())
        context.doSomethingLogic()
    }
    
    func testStrategyHF() {
        let duck = Duck(flyBehavior: FlyWithWings(), quackBehavior: MuteQuack())
        duck.performFly()
        duck.performQuack()
        
        duck.update(flyBehavior: FlyNoWay(), quackBehavior: Quack())
        duck.performFly()
        duck.performQuack()
    }
}
