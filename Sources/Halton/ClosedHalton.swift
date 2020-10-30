
public struct ClosedHalton {
    let seed: Int
    let count: Int
    
    public init(seed: Int, count: Int) {
        self.seed = seed
        self.count = count
    }
    
    public func points(for canvas: (width: Double, height: Double)) -> [HPoint] {
        return (seed..<(seed+count))
            .map { scale(canvas.width, canvas.height)(indexToHPoint($0)) }
    }
}
