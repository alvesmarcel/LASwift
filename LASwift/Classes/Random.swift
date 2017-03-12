// Random.swift
//
// Copyright (c) 2017 Alexander Taraymovich <taraymovich@me.com>
// All rights reserved.
//
// This software may be modified and distributed under the terms
// of the BSD license. See the LICENSE file for details.

/// Random value generator helpers
public struct Random {
    /// Return random value uniformly distributed on specified interval
    ///
    /// - Parameters
    ///     - range: interval
    public static func within<T>(_ range: ClosedRange<T>) -> T
    where T: FloatingPoint, T: ExpressibleByFloatLiteral {
            return (range.upperBound - range.lowerBound) *
                (T(arc4random()) / T(UInt32.max)) + range.lowerBound
    }
    
    /// Return random value uniformly distributed on [0, 1) interval
    public static func generate() -> Double {
        return within(0.0...1.0)
    }
}
