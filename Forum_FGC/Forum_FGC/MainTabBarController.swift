//
//  MainTabBarController.swift
//  Forum_FGC
//
//  Created by Rodrigo on 28/09/25.
//

import UIKit

final class MainTabBarController: UITabBarController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabBar()

    }
    
    func setupTabBar() {
        view.backgroundColor = .systemBackground
        
        //Controllers de cada Aba da tabBar
        
        let feedVC = UINavigationController(rootViewController: FeedViewController())
        let forumVC = UINavigationController(rootViewController: ForumViewController())
        let tournamentsVC = UINavigationController(rootViewController: TournamentsViewController())
        let profileVC = UINavigationController(rootViewController: ProfileViewController())
        
        //Adicionando icones e titulos para o tabBar
        
        feedVC.tabBarItem = UITabBarItem(title: "Feed", image: UIImage(systemName: "house.fill"), tag: 0)
        forumVC.tabBarItem = UITabBarItem(title: "Forum", image: UIImage(systemName: "person.3.fill"), tag: 1)
        tournamentsVC.tabBarItem = UITabBarItem(title: "Torneios", image: UIImage(systemName: "checkmark.circle"), tag: 2)
        profileVC.tabBarItem = UITabBarItem(title: "Perfil", image: UIImage(systemName: "person.circle"), tag: 3)
        
        
        //Adicionando os itens na Tabbar
        
        viewControllers = [feedVC, forumVC, tournamentsVC, profileVC]
        
        //Outras customizacoes
        
        tabBar.tintColor = .systemBlue
        tabBar.unselectedItemTintColor = .lightGray
        tabBar.backgroundColor = .systemBackground
    }

}
