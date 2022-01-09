//
//  Strategy.swift
//  PatternsStudy
//
//  Created by Кирилл Дутов on 09.01.2022.
//

import Foundation

class Context {
    private var strategy: Strategy
    
    init(strategy: Strategy) {
        self.strategy = strategy
    }
    
    func update(strategy: Strategy) {
        self.strategy = strategy
    }
    
    func doSomethingLogic() {
        let result = strategy.doAlgorithm(["a", "b", "c", "d"])
        print(result.joined(separator: ","))
    }
}

protocol Strategy {
    func doAlgorithm<T: Comparable>(_ data: [T]) -> [T]
}

class ConcreateStrategyA: Strategy {
    func doAlgorithm<T>(_ data: [T]) -> [T] where T : Comparable {
        return data.sorted()
    }
}

class ConcreateStrategyB: Strategy {
    func doAlgorithm<T>(_ data: [T]) -> [T] where T : Comparable {
        return data.sorted(by: >)
    }
}
