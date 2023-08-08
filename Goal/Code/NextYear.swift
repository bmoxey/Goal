//
//  NextYear.swift
//  Goal
//
//  Created by Brett Moxey on 8/8/2023.
//

import Foundation

func GetFace(age: Int, isMale: Bool) -> [String] {
    var face = ["👶🏻","👶🏼","👶🏽","👶🏾","👶🏿"]
    if age > 5 {
        if isMale {
            face = ["👦🏻","👦🏼","👦🏽","👦🏾","👦🏿"]
        } else {
            face = ["👧🏻","👧🏼","👧🏽","👧🏾","👧🏿"]
        }
    }
    if age > 11 {
        face = ["🧑🏻","🧑🏼","🧑🏽","🧑🏾","🧑🏿"]
    }
    if age > 17 {
        if isMale {
            face = ["👨🏻","👨🏼","👨🏽","👨🏾","👨🏿"]
        } else {
            face = ["👩🏻","👩🏼","👩🏽","👩🏾","👩🏿"]
        }
    }
    if age > 39 {
        if isMale {
            face = ["🧔🏻‍♂️","🧔🏼‍♂️","🧔🏽‍♂️","🧔🏾‍♂️","🧔🏿‍♂️"]
        } else {
            face = ["👩🏻‍🦱","👩🏼‍🦱","👩🏽‍🦱","👩🏾‍🦱","👩🏿‍🦱"]
        }
    }
    if age > 64 {
        if isMale {
            face = ["👴🏻","👴🏼","👴🏽","👴🏾","👴🏿"]
        } else {
            face = ["👵🏻","👵🏼","👵🏽","👵🏾","👵🏿"]
        }
    }
    return face
}
