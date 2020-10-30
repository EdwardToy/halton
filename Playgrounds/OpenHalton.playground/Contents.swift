//: A playground for showcasing the use of an open Halton sequence

import Halton

var halton = OpenHalton(seed: 0)
let canvas = (200.0, 300.0)

(0..<5).forEach { _ in
    let point = halton.next(canvas)
    print("x: \(point.x), y: \(point.y)")
}
