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

    private var viewModel = ListViewModel(rows: [])

    var viewState: ViewState<ListViewModel> = .empty {
        didSet {
            switch viewState {
                case .loaded(let viewModel):

                    self.viewModel = viewModel
                    tableView.refreshControl?.endRefreshing()
                    tableView.reloadData()
                    break
                case .error:
                    tableView.refreshControl?.endRefreshing()
                    break
                case .loading:
                    tableView.refreshControl?.beginRefreshing()
                    break
                case .empty:
                    break
            }
        }
    }

    override func viewDidLoad() {

        super.viewDidLoad()

        title = "Top Advice Animals Memes"
        presenter?.viewDidLoad()
        setupTableView()
    }

    override func tableView(_ tableView: UITableView,
                            numberOfRowsInSection section: Int) -> Int {

        return viewModel.rows.count
    }

    override func tableView(_ tableView: UITableView,
                            cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        guard let cell = tableView.dequeueReusableCell(withIdentifier: viewModel.rows[indexPath.row].reuseIdentifier)
        as? ListTableViewCell else {
            fatalError()
        }

        cell.viewModel = viewModel.rows[indexPath.row]

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        viewModel.rows[indexPath.row].command?.execute()
    }

    private func setupTableView() {

        tableView.registerCell(ListTableViewCell.self)

        let refreshControl = UIRefreshControl()
        tableView.refreshControl = refreshControl
        refreshControl.addTarget(self, action: #selector(refreshTriggered(_:)), for: UIControlEvents.valueChanged)
    }
    
    @objc private func refreshTriggered(_ refreshControl: UIRefreshControl) {
        presenter?.reloadTriggered()
    }
}
