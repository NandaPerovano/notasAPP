//
//  MainView.swift
//  notasAPP
//
//  Created by Danielle Nozaki Ogawa on 2022/10/06.
//  Copyright © 2022 teste. All rights reserved.
//

import UIKit

class MainView: UIView {

    lazy private var searchBar: UISearchBar = {
        let searchBar = UISearchBar()
        searchBar.placeholder = "Pesquise"
        searchBar.translatesAutoresizingMaskIntoConstraints = false
        searchBar.layer.borderWidth = 1
        searchBar.layer.borderColor = UIColor.white.cgColor
        return searchBar
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        setupTextField()
    }
    
    private func setupTextField() {
        addSubview(searchBar)
        NSLayoutConstraint.activate([
            searchBar.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            searchBar.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            searchBar.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16)
        ])
    }
    
}
