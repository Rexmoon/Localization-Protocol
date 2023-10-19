//
//  Localization.swift
//  Localization Protocol
//
//  Created by Bryan Luna on 10/5/23.
//

protocol Localization {
    
    associatedtype Key
    
    func localizedString(_ key: Key) -> String
}
