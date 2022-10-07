//
//  MainView.swift
//  notasAPP
//
//  Created by Danielle Nozaki Ogawa on 2022/10/06.
//  Copyright © 2022 teste. All rights reserved.
//

import UIKit

class MainView: UIView {

    lazy private var textField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Pesquise"
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.borderStyle = .roundedRect
        return textField
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .blue
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        setupTextField()
    }
    
    private func setupTextField() {
        addSubview(textField)
        NSLayoutConstraint.activate([
            textField.topAnchor.constraint(equalTo: topAnchor),
            textField.leadingAnchor.constraint(equalTo: leadingAnchor),
            textField.trailingAnchor.constraint(equalTo: trailingAnchor)
        ])
        
    }
    
}
