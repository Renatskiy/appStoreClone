//
//  GamePageCell.swift
//  AppStoreClone
//
//  Created by Ренат Ахметгареев on 07.07.2021.
//

import UIKit

class GamePageCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .purple
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
