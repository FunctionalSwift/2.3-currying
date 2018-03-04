//: Playground - Currying

func connect(host: String) -> (Int) -> Void {
    return { port in
        //connection logic
    }

}


connect(host: "localhost")(80)

let localConnector = connect(host: "localhost")

localConnector(80)
localConnector(8888)

