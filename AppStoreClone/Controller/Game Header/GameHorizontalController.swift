//
//  GameHorizontalController.swift
//  AppStoreClone
//
//  Created by Ренат Ахметгареев on 21.07.2021.
//

import UIKit

//
//  GameHeaderSlider.swift
//  AppStoreClone
//
//  Created by Ренат Ахметгареев on 21.07.2021.
//

import UIKit

class GameHorizontalController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    let sliderId = "sliderId"
    
    override func viewDidLoad() {
        collectionView.backgroundColor = .orange
        collectionView.register(GameHorizontalCell.self, forCellWithReuseIdentifier: sliderId)
        
        if let layout = collectionViewLayout as? UICollectionViewFlowLayout{
            layout.scrollDirection = .horizontal
        }
        
    }
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return .init(width: view.frame.width, height: 300)
    }
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: sliderId, for: indexPath) as! GameHorizontalCell
        
       
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return .init(top: 16, left: 0, bottom: 0, right: 0)
    }
    
    init() {
        super.init(collectionViewLayout: UICollectionViewFlowLayout())
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder)")
    }
}


