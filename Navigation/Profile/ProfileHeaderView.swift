//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by Алексей Сердюк on 16.08.2022.
//  Copyright © 2022 aserdiuk. All rights reserved.
//

import Foundation
import UIKit

class ProfileHeaderView : UIView {

    private let button: UIButton = {
        let button = UIButton()
        button.setTitle("Show status", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.backgroundColor = .systemBlue
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 14
        button.widthAnchor.constraint(equalToConstant: 340).isActive = true
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        button.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1).cgColor
        button.layer.shadowOffset = CGSize(width: 4.0, height: 4.0)
        button.layer.shadowOpacity = 0.7
        button.layer.shadowRadius = 4.0
        button.layer.masksToBounds = false

        button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)

        return button
    }()

    private let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Hipster Cat"
        label.textColor = .black
        label.font = UIFont(name: "HelveticaNeue-Bold", size: 16.0)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    private let descriptionLabel: UILabel = {
        let label = UILabel()
        label.text = "Waiting for something"
        label.textColor = .gray
        label.font = UIFont(name: "HelveticaNeue", size: 14.0)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    private let image: UIImageView = {
        let img = UIImageView(frame: CGRect(x: 16, y: 90, width: 100, height: 100))
        img.image = UIImage(named: "image")
        img.layer.cornerRadius = 50
        img.layer.masksToBounds = true
        img.layer.borderWidth = 3
        img.layer.borderColor = UIColor.white.cgColor
        return img
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)

        addViews()
        addConstraints()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

    @objc func buttonPressed() {
        print("Message in console")
    }

    func addViews(){
        addSubview(titleLabel)
        addSubview(descriptionLabel)
        addSubview(button)
        addSubview(image)
    }

    func addConstraints(){
        NSLayoutConstraint.activate([
            button.topAnchor.constraint(equalTo: self.topAnchor, constant: 206),
            button.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 16),

            titleLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 107),
            titleLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 150),

            descriptionLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 157),
            descriptionLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 150)
        ])
    }

}
