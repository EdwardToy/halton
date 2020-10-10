
import Foundation

typealias Halton = (Double) -> Double

func haltonComponent(_ base: Double) -> Halton {
    return { index in
        var result = 0.0
        var f = 1.0 / base
        var i = index
        while i > 0 {
            result = result + f * i.truncatingRemainder(dividingBy: base)
            i = floor(i / base)
            f = f / base
        }
        return result
    }
}

func generateComponent(x: @escaping Halton, y: @escaping Halton) -> (Int) -> HPoint {
    return { index in
        HPoint(
            x(Double(index)),
            y(Double(index))
        )
    }
}

func scale(_ width: Double, _ height: Double) -> (HPoint) -> HPoint {
    return { point in
        HPoint(
            point.x * width,
            point.y * height
        )
    }
}

let indexToHPoint = generateComponent(
    x: haltonComponent(2.0),
    y: haltonComponent(3.0)
)
