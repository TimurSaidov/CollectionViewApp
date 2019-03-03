//
//  MenuViewController.swift
//  CollectionViewApp
//
//  Created by Timur Saidov on 02/03/2019.
//  Copyright © 2019 Timur Saidov. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {
    
    var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .red
        
        configureTableView()
    }
    
    private func configureTableView() {
        tableView = UITableView()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(MenuTableViewCell.self, forCellReuseIdentifier: MenuTableViewCell.reuseId)
        
        view.addSubview(tableView)
        tableView.frame = view.bounds
        
        tableView.separatorStyle = .none
        tableView.rowHeight = 90
        tableView.backgroundColor = .darkGray
    }
}

extension MenuViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: MenuTableViewCell.reuseId, for: indexPath) as! MenuTableViewCell
        
        let menu = Menu(rawValue: indexPath.row)
        
        cell.iconImageView.image = menu?.image
        cell.myLabel.text = menu?.description
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
