//
//  GamePageCell.swift
//  AppStoreClone
//
//  Created by Ренат Ахметгареев on 07.07.2021.
//

import UIKit

class GamePageCell: UICollectionViewCell {
    
    let gameList = GameListController()
    
    private func setupUI(){
        addSubview(gameList.view)
        gameList.view.translatesAutoresizingMaskIntoConstraints = false
//
//        gameList.view.heightAnchor.constraint(equalToConstant: 600).isActive = true
        gameList.view.topAnchor.constraint(equalTo: topAnchor).isActive = true
        gameList.view.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        gameList.view.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        gameList.view.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    }
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
        backgroundColor = .purple
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
