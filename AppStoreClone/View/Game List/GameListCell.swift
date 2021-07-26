//
//  GameHorizontalCell.swift
//  AppStoreClone
//
//  Created by Ренат Ахметгареев on 21.07.2021.
//

import UIKit


class GameListCell: UICollectionViewCell {
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        layer.cornerRadius = 6
        funSet()
    }
    
    let image:UIImageView = {
        let iv = UIImageView()
//       iv.image = UIImage(named: "new_york")

       iv.layer.cornerRadius = 6
       iv.clipsToBounds = true
       iv.contentMode = .scaleToFill
       iv.translatesAutoresizingMaskIntoConstraints = false
       return iv
        
    }()
    
    
    let title: UILabel = {
            let i = UILabel()
    //        i.backgroundColor = UIColor.white
            i.textColor = UIColor.black
        i.font = .systemFont(ofSize: 16, weight: .bold)
            i.text = "Заголовок"
            i.numberOfLines = 0
            i.translatesAutoresizingMaskIntoConstraints = false
    
    
            let maxSize = CGSize(width: 500, height: 300)
            let size = i.sizeThatFits(maxSize)
            i.frame = CGRect(origin: CGPoint(x: 0, y: 0), size: size)
            return i
        }()
    
    let subtitle: UILabel = {
            let i = UILabel()
    //        i.backgroundColor = UIColor.white
            i.textColor = UIColor.black
            i.font = .systemFont(ofSize: 14, weight: .regular)
            i.text = "Подзаголовок"
            i.numberOfLines = 0
            i.translatesAutoresizingMaskIntoConstraints = false
    
    
            let maxSize = CGSize(width: 500, height: 300)
            let size = i.sizeThatFits(maxSize)
            i.frame = CGRect(origin: CGPoint(x: 0, y: 0), size: size)
            return i
        }()
    
    
    func funSet()  {
        addSubview(title)
        addSubview(subtitle)
        addSubview(image)
        title.translatesAutoresizingMaskIntoConstraints = false
        subtitle.translatesAutoresizingMaskIntoConstraints = false
        image.translatesAutoresizingMaskIntoConstraints = false
            
        title.widthAnchor.constraint(equalToConstant: frame.width).isActive = true
        title.leftAnchor.constraint(equalTo: leftAnchor, constant: 8).isActive = true
        
        subtitle.widthAnchor.constraint(equalToConstant: frame.width).isActive = true
        subtitle.leftAnchor.constraint(equalTo: leftAnchor, constant: 8).isActive = true
        subtitle.topAnchor.constraint(equalTo: title.bottomAnchor, constant: 5).isActive = true
        
        
        image.topAnchor.constraint(equalTo: topAnchor, constant: 45).isActive = true
        image.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        image.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        image.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    }

            
           
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
