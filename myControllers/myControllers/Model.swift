//
//  Modal.swift
//  myControllers
//
//  Created by Praženica Andrej on 24/04/16.
//  Copyright © 2016 Praženica Andrej. All rights reserved.
//

import UIKit
import Foundation
import Curry
import Argo

struct Person {
    let name: String
    let photo: String?
    let addresses: [Address]
    let gender: Gender
}

extension Person: Decodable {
    static func decode(json: JSON) -> Decoded<Person> {
        return curry(self.init)
            <^> json <| "name"
            <*> json <|? "photo"
            <*> json <|| "addresses"
            <*> json <| "gender" <|> pure(.Thai)
    }
}

struct Address {
    let city: String
    let street: String
    let type: AddressType
}


extension Address: Decodable {
    static func decode(json: JSON) -> Decoded<Address> {
        return curry(self.init)
            <^> json <| "city"
            <*> json <| "street"
            <*> json <| "address_type"
    }
}

enum AddressType: String {
    case Residential = "residential"
    case Business = "bussiness"
}
extension AddressType: Decodable { }

enum Gender: String {
    case Male = "male"
    case Female = "female"
    case Thai = "_allCasesShouldDefaultHere"
}
extension Gender: Decodable { }

//Helpers
extension Address {
    var text: String {
        return city + ", " + street
    }
}

extension Gender {
    private static var randomColor: UIColor = .orangeColor()
    
    var color: UIColor {
        switch self {
        case Male: return .blueColor()
        case .Female: return .redColor()
        case .Thai: return Gender.randomColor
        }
    }
}