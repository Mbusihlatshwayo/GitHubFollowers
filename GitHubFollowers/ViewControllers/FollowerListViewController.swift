//
//  FollowerListViewController.swift
//  GitHubFollowers
//
//  Created by Mbusi Hlatshwayo on 7/20/21.
//

import UIKit

class FollowerListViewController: UIViewController
{
    var username: String

    init(username: String)
    {
        self.username = username
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder)
    {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.title = username
        view.backgroundColor = .systemBackground
        navigationController?.isNavigationBarHidden = false
        navigationController?.navigationBar.prefersLargeTitles = true
    }
}
