//
//  GameListController.swift
//  AppStoreClone
//
//  Created by Ренат Ахметгареев on 21.07.2021.
//


import UIKit

class GameListController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    let sliderId = "sliderId"
    let topBottomPadding: CGFloat = 12
    let lineSpacing: CGFloat = 10
    
    override func viewDidLoad() {
        collectionView.backgroundColor = .white
        collectionView.register(GameListCell.self, forCellWithReuseIdentifier: sliderId)
        
        if let layout = collectionViewLayout as? UICollectionViewFlowLayout{
            layout.scrollDirection = .horizontal
        }
        
    }
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let height = (view.frame.height  - topBottomPadding * 2 - lineSpacing * 2) / 3
        return .init(width: view.frame.width - 48, height: height)
    }
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: sliderId, for: indexPath) as! GameListCell
        cell.nameLabel.text = "Some Name"
        cell.companyLabel.text = "Some Label"
        cell.imageView.image = UIImage(named: "ios_game_1")
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return .init(top: topBottomPadding, left: 16, bottom: topBottomPadding, right: 16)
    }
    
    init() {
        super.init(collectionViewLayout: UICollectionViewFlowLayout())
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder)")
    }
}


