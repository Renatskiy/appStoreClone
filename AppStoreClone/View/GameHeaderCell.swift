//
//  GameHeaderCell.swift
//  AppStoreClone
//
//  Created by Ренат Ахметгареев on 15.07.2021.
//

import UIKit




class GameHeaderCell: UICollectionReusableView {
    
    let gameHeader = GameHorizontalController()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
        
    }
    
    private func setupUI(){
        
        addSubview(gameHeader.view)
    
        
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
