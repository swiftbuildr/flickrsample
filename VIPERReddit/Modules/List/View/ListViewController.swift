//
//  ListViewController.swift
//  weather-sample
//
//  Created by Samuel Ward on 19/01/2018.
//  Copyright © 2018 Swiftbuildr Ltd. All rights reserved.
//

import UIKit


class ListViewController: UITableViewController, ListView {

    var presenter: ListPresenterInput?

    var state: ViewState<ListViewModel> = .empty {
        didSet {

            DispatchQueue.main.async { [weak self] in

                guard let `self` = self else { return }

                switch self.state {

                    case .loaded(_):
                        self.tableView.reloadData()
                        self.tableView.removeBlurLoader()
                        self.tableView.refreshControl?.endRefreshing()
                    case .error:
                        self.tableView.refreshControl?.endRefreshing()
                    case .loading:
                        self.tableView.showBlurLoader()
                    case .empty:
                        break
                }
            }
        }
    }

    override func viewDidLoad() {

        super.viewDidLoad()

        title = "Digest"
        presenter?.viewDidLoad()
        setupTableView()
    }

    override func tableView(_ tableView: UITableView,
                            numberOfRowsInSection section: Int) -> Int {

        return state.loadedViewModel?.rows.count ?? 0
    }

    override func tableView(_ tableView: UITableView,
                            cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        guard let viewModel = state.loadedViewModel else { return UITableViewCell() }

        let cell = tableView.dequeueReusableCell(withIdentifier: viewModel.rows[
                indexPath.row
                ].reuseIdentifier,
                                                 for: indexPath)

        if let cell = cell as? ListTableViewCell {
            cell.viewModel = viewModel.rows[indexPath.row]
        }

        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        state.loadedViewModel?.rows[indexPath.row].command?.execute()
    }

    private func setupTableView() {

        tableView.registerCell(ListTableViewCell.self)

        let refreshControl = UIRefreshControl()
        tableView.refreshControl = refreshControl
        refreshControl.addTarget(self,
                                 action: #selector(refreshTriggered(_:)),
                                 for: UIControlEvents.valueChanged)
    }

    @objc private func refreshTriggered(_ refreshControl: UIRefreshControl) {

        presenter?.reloadTriggered()
    }
}
