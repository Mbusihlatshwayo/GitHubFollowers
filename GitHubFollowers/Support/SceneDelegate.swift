//
//  SceneDelegate.swift
//  GitHubFollowers
//
//  Created by Mbusi Hlatshwayo on 7/19/21.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate
{

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions)
    {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        window =  UIWindow(frame: windowScene.coordinateSpace.bounds)
        window?.windowScene = windowScene
        window?.rootViewController = createTabBar()
        window?.makeKeyAndVisible()
        
        configureNavigationBar()
    }
    
    func createTabBar() -> UITabBarController
    {
        let rootTabBar = UITabBarController()
        UITabBar.appearance().tintColor = .systemGreen
        rootTabBar.viewControllers = [createSearchNavigationController(), createFavoritesNavigationController()]
        
        return rootTabBar
    }
    
    func configureNavigationBar()
    {
        UINavigationBar.appearance().tintColor = .systemGreen
    }
    
    func createSearchNavigationController() -> UINavigationController
    {
        let searchViewController = SearchViewController()
        searchViewController.title = "Search"
        searchViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 0)
        
        return UINavigationController(rootViewController: searchViewController)
    }
    
    func createFavoritesNavigationController() -> UINavigationController
    {
        let favoritesListViewController = FavoritesListViewController()
        favoritesListViewController.title = "Favorites"
        favoritesListViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 1)
        
        return UINavigationController(rootViewController: favoritesListViewController)
    }
    
    func sceneDidDisconnect(_ scene: UIScene) { }

    func sceneDidBecomeActive(_ scene: UIScene) { }

    func sceneWillResignActive(_ scene: UIScene) { }

    func sceneWillEnterForeground(_ scene: UIScene) { }

    func sceneDidEnterBackground(_ scene: UIScene) { }

}

