//
//  GameListItem.swift
//  AppStoreClone
//
//  Created by Ренат Ахметгареев on 28.07.2021.
//

import UIKit

class GameListItem: UICollectionViewCell {
    var DataTitles:Array = [
        "title_1", "Title_2", "Title_3"
    ]
    let stack:UIStackView = {
       let sv = UIStackView()
       sv.axis = .horizontal
       sv.isLayoutMarginsRelativeArrangement = true
       sv.alignment = .leading
       sv.backgroundColor = .black
       sv.translatesAutoresizingMaskIntoConstraints = false
       return sv
    }()
    private func stackUi(){
        stack.addArrangedSubview(image_1)
        stack.addArrangedSubview(title_1)
        stack.addArrangedSubview(subtitle_1)
        
        stack.translatesAutoresizingMaskIntoConstraints = false
        
        stack.widthAnchor.constraint(equalToConstant: frame.width).isActive = true
        stack.heightAnchor.constraint(equalToConstant: 100).isActive = true
       
    }
    
    
    
    
    
    
//
//    private func TitleCell() {
//        for val in DataTitles {
//
//        }
//    }
    let image_1:UIImageView = {
        let iv = UIImageView()
       iv.image = UIImage(named: "ios_game_3")

       iv.layer.cornerRadius = 6
       iv.clipsToBounds = true
       iv.contentMode = .scaleToFill
       iv.translatesAutoresizingMaskIntoConstraints = false
       return iv
    }()
    
    let button_1:UIButton = {
        let b = UIButton()
        b.setTitle("ButtonTitle", for: .normal)
        b.backgroundColor = .green
        b.layer.cornerRadius = 6
//        b.font = .systemFont(ofSize: 10, weight: .regular)
        b.translatesAutoresizingMaskIntoConstraints = false
        return b
    }()
    
    let title_1:UILabel = {
        let l = UILabel()
        
        l.font = .systemFont(ofSize: 16, weight: .regular)
        l.text = "Title"
        
        let maxSize = CGSize(width: 50, height: 10)
        let size = l.sizeThatFits(maxSize)
        l.frame = CGRect(origin: CGPoint(x: 0, y: 0), size: size)
        
        return l
    }()
    
    let subtitle_1:UILabel = {
        let l = UILabel()
        l.font = .systemFont(ofSize: 16, weight: .regular)
        l.text = "subtitle"
        
        let maxSize = CGSize(width: 50, height: 10)
        let size = l.sizeThatFits(maxSize)
        l.frame = CGRect(origin: CGPoint(x: 0, y: 0), size: size)
        
        return l
    }()
    
    
    
    //second line
    
    let image_2:UIImageView = {
        let iv = UIImageView()
       iv.image = UIImage(named: "ios_game_1")

       iv.layer.cornerRadius = 6
       iv.clipsToBounds = true
       iv.contentMode = .scaleToFill
       iv.translatesAutoresizingMaskIntoConstraints = false
       return iv
    }()
    
    let button_2:UIButton = {
        let b = UIButton()
        b.layer.cornerRadius = 6
        b.translatesAutoresizingMaskIntoConstraints = false
        return b
    }()
    
    let title_2:UILabel = {
        let l = UILabel()
        
        l.font = .systemFont(ofSize: 16, weight: .regular)
        l.text = "Title_2"
        
        let maxSize = CGSize(width: 50, height: 10)
        let size = l.sizeThatFits(maxSize)
        l.frame = CGRect(origin: CGPoint(x: 0, y: 0), size: size)
        
        return l
    }()
    
    let subtitle_2:UILabel = {
        let l = UILabel()
        l.font = .systemFont(ofSize: 16, weight: .regular)
        l.text = "subtitle_2"
        
        let maxSize = CGSize(width: 50, height: 10)
        let size = l.sizeThatFits(maxSize)
        l.frame = CGRect(origin: CGPoint(x: 0, y: 0), size: size)
        
        return l
    }()
    
    //fird line
    
    let image_3:UIImageView = {
        let iv = UIImageView()
       iv.image = UIImage(named: "ios_game_2")

       iv.layer.cornerRadius = 6
       iv.clipsToBounds = true
       iv.contentMode = .scaleToFill
       iv.translatesAutoresizingMaskIntoConstraints = false
       return iv
    }()
    
    let button_3:UIButton = {
        let b = UIButton()
        b.layer.cornerRadius = 6
        b.translatesAutoresizingMaskIntoConstraints = false
        return b
    }()
    
    let title_3:UILabel = {
        let l = UILabel()
        
        l.font = .systemFont(ofSize: 16, weight: .regular)
        l.text = "Title_2"
        
        let maxSize = CGSize(width: 50, height: 10)
        let size = l.sizeThatFits(maxSize)
        l.frame = CGRect(origin: CGPoint(x: 0, y: 0), size: size)
        
        return l
    }()
    
    let subtitle_3:UILabel = {
        let l = UILabel()
        l.font = .systemFont(ofSize: 16, weight: .regular)
        l.text = "subtitle_2"
        
        let maxSize = CGSize(width: 50, height: 10)
        let size = l.sizeThatFits(maxSize)
        l.frame = CGRect(origin: CGPoint(x: 0, y: 0), size: size)
        
        return l
    }()
    
//    public func setupUi() {
//        addSubview(image_1)
//        addSubview(title_1)
//        addSubview(subtitle_1)
//        addSubview(button_1)
//
//        addSubview(image_2)
//        addSubview(title_2)
//        addSubview(subtitle_2)
//
//        addSubview(image_3)
//        addSubview(title_3)
//        addSubview(subtitle_3)
//
//        image_1.translatesAutoresizingMaskIntoConstraints = false
//        title_1.translatesAutoresizingMaskIntoConstraints = false
//        subtitle_1.translatesAutoresizingMaskIntoConstraints = false
//        button_1.translatesAutoresizingMaskIntoConstraints = false
//
//        subtitle_1.widthAnchor.constraint(equalToConstant: 300).isActive = true
//        subtitle_1.leftAnchor.constraint(equalTo: image_1.rightAnchor, constant: 8).isActive = true
//        subtitle_1.topAnchor.constraint(equalTo: title_1.bottomAnchor, constant: 5).isActive = true
//
//        title_1.widthAnchor.constraint(equalToConstant: 300).isActive = true
//        title_1.leftAnchor.constraint(equalTo: image_1.rightAnchor, constant: 8).isActive = true
//
//        image_1.heightAnchor.constraint(equalToConstant: 100).isActive = true
//        image_1.widthAnchor.constraint(equalToConstant: 100).isActive = true
//
//        button_1.widthAnchor.constraint(equalToConstant: 100).isActive = true
//        button_1.leftAnchor.constraint(equalTo: title_1.leftAnchor, constant: 100).isActive = true
//        button_1.topAnchor.constraint(equalTo: image_1.topAnchor, constant: 2).isActive = true
//
//
//
//
//        image_2.translatesAutoresizingMaskIntoConstraints = false
//        title_2.translatesAutoresizingMaskIntoConstraints = false
//        subtitle_2.translatesAutoresizingMaskIntoConstraints = false
//
//        image_2.topAnchor.constraint(equalTo: image_1.bottomAnchor, constant: 2).isActive = true
//
//
//        image_2.heightAnchor.constraint(equalToConstant: 100).isActive = true
//        image_2.widthAnchor.constraint(equalToConstant: 100).isActive = true
//
//        title_2.widthAnchor.constraint(equalToConstant: 300).isActive = true
//        title_2.leftAnchor.constraint(equalTo: image_2.rightAnchor, constant: 8).isActive = true
//        title_2.topAnchor.constraint(equalTo: title_1.bottomAnchor, constant: 80).isActive = true
//
//        subtitle_2.widthAnchor.constraint(equalToConstant: 300).isActive = true
//        subtitle_2.leftAnchor.constraint(equalTo: image_2.rightAnchor, constant: 8).isActive = true
//        subtitle_2.topAnchor.constraint(equalTo: title_2.bottomAnchor, constant: 2).isActive = true
//
//
//        image_3.translatesAutoresizingMaskIntoConstraints = false
//        title_3.translatesAutoresizingMaskIntoConstraints = false
//        subtitle_3.translatesAutoresizingMaskIntoConstraints = false
//
//        image_3.topAnchor.constraint(equalTo: image_2.bottomAnchor, constant: 2).isActive = true
//
//
//        image_3.heightAnchor.constraint(equalToConstant: 100).isActive = true
//        image_3.widthAnchor.constraint(equalToConstant: 100).isActive = true
//
//        title_3.widthAnchor.constraint(equalToConstant: 300).isActive = true
//        title_3.leftAnchor.constraint(equalTo: image_3.rightAnchor, constant: 8).isActive = true
//        title_3.topAnchor.constraint(equalTo: title_2.bottomAnchor, constant: 82).isActive = true
//
//        subtitle_3.widthAnchor.constraint(equalToConstant: 300).isActive = true
//        subtitle_3.leftAnchor.constraint(equalTo: image_3.rightAnchor, constant: 8).isActive = true
//        subtitle_3.topAnchor.constraint(equalTo: title_3.bottomAnchor, constant: 2).isActive = true
        
//    }
    override init(frame: CGRect) {
       
        super.init(frame: frame)
        stackUi()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
