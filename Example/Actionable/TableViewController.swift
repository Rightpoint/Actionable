//
//  TableViewController.swift
//  Actionable
//
//  Created by Connor Neville on 02/13/2019.
//  Copyright (c) 2019 Rightpoint. All rights reserved.
//

import Actionable
import UIKit

class TableViewController: UITableViewController, TableViewCellDelegate, Actionable {

    weak var delegate: Delegate?

    enum Action {
        case didTapCell(row: Int)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(TableViewCell.self,
                           forCellReuseIdentifier: TableViewCell.reuseID)
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 50
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(
            withIdentifier: TableViewCell.reuseID, for: indexPath)
            as! TableViewCell
        cell.delegate = self
        return cell
    }

    func tableViewCell(_ cell: TableViewCell, didNotify action: TableViewCell.Action) {
        switch action {
        case .didTapButton:
            guard let row = tableView.indexPath(for: cell)?.row else {
                return
            }
            notify(.didTapCell(row: row))
        }
    }

}

