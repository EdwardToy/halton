//: A playground for showcasing the use of a closed Halton sequence

import Halton

let halton = ClosedHalton(seed: 0, count: 5)
let canvas = (200.0, 300.0)

halton
    .points(for: canvas)
    .forEach { point in
        print("x: \(point.x), y: \(point.y)")
    }
