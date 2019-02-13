//
//  TableViewCell.swift
//  Actionable_Example
//
//  Created by Connor Neville on 2/13/19.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import Actionable
import UIKit

final class TableViewCell: UITableViewCell {

    static var reuseID = "TableViewCell.reuseID"

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Send delegated action", for: .normal)
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)

        contentView.addSubview(button)

        button.topAnchor.constraint(equalTo: contentView.topAnchor)
            .isActive = true
        button.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
            .isActive = true
        button.leadingAnchor.constraint(equalTo: contentView.leadingAnchor)
            .isActive = true
        button.trailingAnchor.constraint(equalTo: contentView.trailingAnchor)
            .isActive = true
    }

    @available(*, unavailable) required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    @objc func buttonTapped() {
        print("Button tapped")
    }

}
