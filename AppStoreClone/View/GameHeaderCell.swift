//
//  GameHeaderCell.swift
//  AppStoreClone
//
//  Created by Ренат Ахметгареев on 15.07.2021.
//

import UIKit




class GameHeaderCell: UICollectionReusableView {
    
    let gameImageView: UIImageView = {
        
        let iv = UIImageView()
        iv.image = UIImage(named: "new_york")
        
        iv.layer.cornerRadius = 12
        iv.clipsToBounds = true
        iv.contentMode = .scaleToFill
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()
    
    let label: UILabel = {
        let i = UILabel()
//        i.backgroundColor = UIColor.white
        i.textColor = UIColor.black
        i.text = "Лондон из э кэпитал оф Грейт Британ"
        i.numberOfLines = 10
        
        let maxSize = CGSize(width: 300, height: 300)
        let size = i.sizeThatFits(maxSize)
        i.frame = CGRect(origin: CGPoint(x: 0, y: 0), size: size)
        return i
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
        
    }
    
    private func setupUI(){
//        backgroundColor = .red
        addSubview(label)
        addSubview(gameImageView)
        
        label.widthAnchor.constraint(equalToConstant: frame.width).isActive = true

        gameImageView.topAnchor.constraint(equalTo: topAnchor, constant: 45).isActive = true
        gameImageView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        gameImageView.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        gameImageView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        
       
       
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
