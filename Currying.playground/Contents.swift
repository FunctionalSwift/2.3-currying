//: Playground - Currying

func consoleLogger(type: String) -> (String) -> Void {
    return { msg in
        print("[\(type)]    \(msg)")
    }
}

func operation(a: Int, b: Int, logger: (String) -> ()) {
    guard a > 0 else {
        logger("a must be positive")
        return
    }
    
    guard b > 0 else {
        logger("b must be positive")
        return
    }
    
    //do something with a and b
}

operation(a: 1, b: 2, logger: consoleLogger(type: "ERROR"))
