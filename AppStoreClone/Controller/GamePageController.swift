//
//  GamePageController.swift
//  AppStoreClone
//
//  Created by Ренат Ахметгареев on 07.07.2021.
//

import UIKit

class GamePageController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    //регистрируем id ячейки
    let cellID = "gameID"
    let headerId = "gameHeaderId"
    var games: Games?
    
    override func viewDidLoad() {
        collectionView.backgroundColor = .orange
        collectionView.register(GamePageCell.self, forCellWithReuseIdentifier: cellID)
        
//        collectionView.register(GameListCell.self, forCellWithReuseIdentifier: gameListId)
        
        collectionView.register(GameHeaderCell.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: headerId)
        fetchGames()
    }
    
    
    
    private func fetchGames(){
        let url = "https://rss.itunes.apple.com/api/v1/us/ios-apps/new-games-we-love/all/50/explicit.json"
        
        Service.shared.get(url: url) { [weak self] result in
            
            guard let self = self else { return }
            switch result {
            case .success(let requestGames):
                self.updateGames(requestGames: requestGames)
            case .failure(let requestError):
                DispatchQueue.main.async {
                    self.presentErrorAlert(message: requestError.localizedDescription)
                }
            }
        }
    }
    
    //функция апдейта после получения респонса
    
    private func updateGames(requestGames: Games){
        games = requestGames
        DispatchQueue.main.async {
            self.collectionView.reloadData()
        }
        
    }
    
    private func presentErrorAlert(message: String) {

        let alert = UIAlertController(title: "Ошибка", message: message, preferredStyle: .alert)

        alert.addAction(UIAlertAction(title: "Закрыть", style: .destructive, handler: nil))

        self.present(alert, animated: true)
    }
    
    
    //MARK: -header
    
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: headerId, for: indexPath) as! GameHeaderCell
       
        return header
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return .init(width: view.frame.width, height: 300)
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return .init(width: view.frame.width, height: 300)
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellID, for: indexPath) as! GamePageCell
        
        
        cell.gameList.games = games
        
        cell.gameList.didselectHandler = {[ weak self ] game in
            let gameDetail = GameDetailViewController()
            gameDetail.navigationItem.title = game.artistName
            self?.navigationController?.pushViewController(gameDetail, animated: true)
        }
        
        
        
        
        
        
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return .init(top: 16, left: 0, bottom: 0, right: 0)
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("tapped")
    }
    
    init() {
        super.init(collectionViewLayout: UICollectionViewFlowLayout())
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder)")
    }
}
