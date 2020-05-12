//
//  TessellationTests.swift
//  iGeometry
//
//  Created by Nail Sharipov on 07.05.2020.
//

import Foundation
import iGeometry

#if iShapeTest

public struct TessellationTests {
    
    private static let key = "tessellation"
    public static var pageIndex: Int = UserDefaults.standard.integer(forKey: TessellationTests.key)
    public static func nextIndex() -> Int {
        let n = TessellationTests.data.count
        TessellationTests.pageIndex = (TessellationTests.pageIndex + 1) % n
        UserDefaults.standard.set(TessellationTests.pageIndex, forKey: TessellationTests.key)
        return TessellationTests.pageIndex
    }
    
    public static func prevIndex() -> Int {
        let n = TessellationTests.data.count
        TessellationTests.pageIndex = (TessellationTests.pageIndex - 1 + n) % n
        UserDefaults.standard.set(TessellationTests.pageIndex, forKey: TessellationTests.key)
        return TessellationTests.pageIndex
    }
    
    public static let data: [[[Point]]] = [
        // test 0
        [
            [
                Point(x: -15, y: -15),
                Point(x: -25, y: 0),
                Point(x: -15, y: 15),
                Point(x: 15, y: 15),
                Point(x: 15, y: -15)
            ],
            [
                Point(x: 0, y: 0)
            ]
        ],
        // test 1
        [
            [
                Point(x: -10, y: 0),
                Point(x: -5, y: 10),
                Point(x: 5, y: 10),
                Point(x: 10, y: 0),
                Point(x: 5, y: -10),
                Point(x: -5, y: -10)
            ],
            [
                Point(x: 0, y: -5)
            ]
        ],
        // test 2
        [
            [
                Point(x: 0, y: 0),
                Point(x: -5, y: 10),
                Point(x: 5, y: 10),
                Point(x: 10, y: 0),
                Point(x: 5, y: -10),
                Point(x: -5, y: -10)
            ],
            [
                Point(x: 5, y: 0)
            ]
        ],
        // test 3
        [
            [
                Point(x: 1, y: 5),
                Point(x: -5, y: 10),
                Point(x: 5, y: 10),
                Point(x: 10, y: 0),
                Point(x: 5, y: -10),
                Point(x: -5, y: -10)
            ],
            [
                Point(x: 5, y: 0)
            ]
        ]

    ]
}

#endif
