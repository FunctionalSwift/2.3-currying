//: Playground - Currying

func consoleLogger(type: String, msg: String) {
    print("[\(type)]    \(msg)")
}

func operation(a: Int, b: Int, logger: (String, String) -> ()) {
    guard a > 0 else {
        logger("ERROR", "a must be positive")
        return
    }
    
    guard b > 0 else {
        logger("ERROR", "b must be positive")
        return
    }
    
    //do something with a and b
}

operation(a: 1, b: -2, logger: consoleLogger)
