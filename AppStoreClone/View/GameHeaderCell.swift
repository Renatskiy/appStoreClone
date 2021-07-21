//
//  GameHeaderCell.swift
//  AppStoreClone
//
//  Created by Ренат Ахметгареев on 15.07.2021.
//

import UIKit




class GameHeaderCell: UICollectionReusableView {
    
    let gameHeader = GameHorizontalController()
    
//    let gameImageView: UIImageView = {
//
//        let iv = UIImageView()
//        iv.image = UIImage(named: "new_york")
//
//        iv.layer.cornerRadius = 6
//        iv.clipsToBounds = true
//        iv.contentMode = .scaleToFill
//        iv.translatesAutoresizingMaskIntoConstraints = false
//        return iv
//    }()
    
//    let label: UILabel = {
//        let i = UILabel()
////        i.backgroundColor = UIColor.white
//        i.textColor = UIColor.black
//        i.font = .systemFont(ofSize: 16, weight: .regular)
//        i.text = "Лондон из э кэпитал оф Грейт Британ"
//        i.numberOfLines = 0
//        i.translatesAutoresizingMaskIntoConstraints = false
//
//
//        let maxSize = CGSize(width: 500, height: 300)
//        let size = i.sizeThatFits(maxSize)
//        i.frame = CGRect(origin: CGPoint(x: 0, y: 0), size: size)
//        return i
//    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
        
    }
    
    private func setupUI(){
        
        addSubview(gameHeader.view)
        
//        backgroundColor = .red
       
//        addSubview(gameImageView)
//
//        label.widthAnchor.constraint(equalToConstant: frame.width).isActive = true
//        label.leftAnchor.constraint(equalTo: leftAnchor, constant: 8).isActive = true
        
        gameHeader.view.translatesAutoresizingMaskIntoConstraints = false
//
        gameHeader.view.topAnchor.constraint(equalTo: topAnchor).isActive = true
        gameHeader.view.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        gameHeader.view.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        gameHeader.view.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        
       
       
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
