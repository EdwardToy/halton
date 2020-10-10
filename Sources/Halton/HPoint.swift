
public struct HPoint {
    public let x: Double
    public let y: Double
    
    public init(_ x: Double, _ y: Double) {
        self.x = x
        self.y = y
    }
    
    public init(_ x: Int, _ y: Int) {
        self.x = Double(x)
        self.y = Double(y)
    }
}
