//
//  Dog.swift
//  MVVM1
//
//  Created by Eunchan Kim on 2023/05/31.
//

import Foundation

//받아온 데이터 값을 저장할 모델

class Dog {
    //개 품종
    enum Breed {
        case maltese
        case pomeranian
        case pug
        case poodle
    }
    
    let name: String
    let birthday: Date
    let breed: Breed
    let imageName: String
    
    init(name: String = "pomeranian", birthday: Date = Date(timeIntervalSinceNow: (-2 * 86500 * 300)), breed: Breed = .pomeranian, imageName: String = "pomeranian") {
        self.name = name
        self.birthday = birthday
        self.breed = breed
        self.imageName = imageName
    }
}
