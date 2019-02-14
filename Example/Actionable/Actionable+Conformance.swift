// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT







// MARK: - TableViewCell
internal protocol TableViewCellDelegate: class {

    func tableViewCell(_ cell: TableViewCell, didNotify action: TableViewCell.Action)

}

internal extension TableViewCell {

    typealias ActionType = Action
    typealias Delegate = TableViewCellDelegate

    func notify(_ action: ActionType) {
        delegate?.tableViewCell(self, didNotify: action)
    }

}

// MARK: - TableViewController
internal protocol TableViewControllerDelegate: class {

    func tableViewController(_ vc: TableViewController, didNotify action: TableViewController.Action)

}

internal extension TableViewController {

    typealias ActionType = Action
    typealias Delegate = TableViewControllerDelegate

    func notify(_ action: ActionType) {
        delegate?.tableViewController(self, didNotify: action)
    }

}

