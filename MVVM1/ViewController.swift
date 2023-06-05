//
//  ViewController.swift
//  MVVM1
//
//  Created by Eunchan Kim on 2023/05/31.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //view
        let dogView = DogView()
        let viewModel = DogViewModel()
        viewModel.configure(dogView)
        
        self.view.addSubview(dogView)
        
        //layout
        dogView.translatesAutoresizingMaskIntoConstraints = false
        dogView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 135).isActive = true
        dogView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        dogView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.9).isActive = true
        dogView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -100).isActive = true
    }


}


extension DogViewModel{
    func configure(_ view: DogView){
        view.nameLabel.text = name
        view.imageName = imageName
        view.ageLabel.text = ageText
        view.adoptionFeeLabel.text = adoptionFeeText
    }
}
