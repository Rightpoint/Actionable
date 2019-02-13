// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT







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

    func with(delegate: Delegate) -> Self {
        self.delegate = delegate
        return self
    }

}

