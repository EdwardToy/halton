
public struct OpenHalton {
    var index: Int
    
    public init(seed: Int) {
        self.index = seed
    }
    
    public mutating func next(_ canvas: (width: Double, height: Double)) -> HPoint {
        let point = indexToHPoint(index)
        let scaledPoint = scale(canvas.width, canvas.height)(point)

        index += 1

        return scaledPoint
    }
    
    public mutating func next(_ canvas: (width: Double, height: Double), fulfilling predicate: (HPoint) -> Bool) -> HPoint {
        let point = indexToHPoint(index)
        let scaledPoint = scale(canvas.width, canvas.height)(point)
        
        index += 1
        
        if predicate(scaledPoint) {
            return scaledPoint
        }
        
        return next((canvas.width, canvas.height), fulfilling: predicate)
    }
}
