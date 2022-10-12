//
//  MainView.swift
//  notasAPP
//
//  Created by Danielle Nozaki Ogawa on 2022/10/06.
//  Copyright © 2022 teste. All rights reserved.
//

import UIKit

class MainView: UIView {
    
    lazy var searchBar: UISearchBar = {
        let searchBar = UISearchBar()
        searchBar.translatesAutoresizingMaskIntoConstraints = false
        searchBar.placeholder = "Pesquise"
        searchBar.layer.borderWidth = 1
        searchBar.layer.borderColor = UIColor.white.cgColor
        return searchBar
    }()
    
    lazy var contentView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .gray
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI() {
        self.addSubview(searchBar)
        self.addSubview(contentView)
        NSLayoutConstraint.activate([
            searchBar.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            searchBar.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            searchBar.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            contentView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            contentView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 80),
            contentView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -80),
            contentView.heightAnchor.constraint(equalToConstant: 160)
        ])
    }
    
}
