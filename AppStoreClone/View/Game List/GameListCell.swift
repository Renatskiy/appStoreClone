//
//  GameHorizontalCell.swift
//  AppStoreClone
//
//  Created by Ренат Ахметгареев on 21.07.2021.
//

import UIKit


class GameListCell: UICollectionViewCell {
    
    let imageView = UIImageView(cornerRadius: 8)
    let nameLabel = UILabel(text: "Game Name", font: UIFont.systemFont(ofSize: 20))
    let companyLabel = UILabel(text: "Company Label", font: .systemFont(ofSize: 13))
    let getButton = UIButton(title: "Загрузить")
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        funSet()
    }

    
   

    func funSet()  {
        
        backgroundColor = .white
        
        imageView.widthAnchor.constraint(equalToConstant: 64).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 64).isActive = true
        
        
        getButton.backgroundColor = UIColor(white: 0.95, alpha: 1)
        getButton.widthAnchor.constraint(equalToConstant: 120).isActive = true
        getButton.heightAnchor.constraint(equalToConstant: 32).isActive = true
        getButton.layer.cornerRadius = 32 / 2
        getButton.titleLabel?.font = .boldSystemFont(ofSize: 16)
        
        nameLabel.numberOfLines = 2
        
        
        let stackView = UIStackView(arrangedSubviews: [imageView, VerticalStackView(arrangedSubviews: [nameLabel, companyLabel], spacing: 4), getButton])
        
        stackView.spacing = 16
        stackView.alignment = .center
    
        stackView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(stackView)
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: topAnchor),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor),
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor)
    ])
        
        
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
