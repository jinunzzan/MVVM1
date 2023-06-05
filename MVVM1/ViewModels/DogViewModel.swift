//
//  DogViewModel.swift
//  MVVM1
//
//  Created by Eunchan Kim on 2023/06/05.
//

import Foundation

//ViewModel
// 모델을 사용해 받아온 데이터를 가공하기 위한 뷰 모델을 만든다
// 여기서 name 과 imageName 같은 경우 그대로 사용할 것이기 때문에 별다른 과정이 들어가 잇지
//않지만 뷰에 띄울 나이ㅏ의 경우 모델을 통해 받아온 데이터를 바로 사용하기 힘들기 때문에 뷰모델을 통해 가공
//그리고 어떤 품종인지에 따라 가격을 반환
class DogViewModel{
    let dog: Dog
    let calendar: Calendar
    
    init(){
        self.dog = Dog()
        self.calendar = Calendar(identifier: .gregorian)
    }
    
    var name: String{
        return dog.name
    }
    
    var imageName: String{
        return dog.imageName
    }
    var ageText: String{
        let today = calendar.startOfDay(for: Date())
        let birthday = calendar.startOfDay(for: dog.birthday)
        let components = calendar.dateComponents([.year], from: birthday, to: today)
        let age = components.year == nil ? 0 : components.year!
        return "\(age) years old"
    }
    var adoptionFeeText: String{
        switch dog.breed{
        case .maltese:
            return "W200000"
        case .pomeranian:
            return "W500000"
        case .poodle:
            return "W500000"
        case .pug:
            return "W40000"
        }
    }
}
