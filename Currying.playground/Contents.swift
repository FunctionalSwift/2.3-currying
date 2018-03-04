//: Playground - Currying

class Connector {
    func connect(host: String, port: Int) {
        //connection logic
    }
    
    func connect(host: String) {
        connect(host: host, port: 80)
    }
    
    func connect()  {
        connect(host: "localhost")
    }
}
