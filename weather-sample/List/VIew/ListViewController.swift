//
//  ListViewController.swift
//  weather-sample
//
//  Created by Samuel Ward on 19/01/2018.
//  Copyright © 2018 Swiftbuildr Ltd. All rights reserved.
//

import UIKit


class ListViewController: UIViewController, ListView {

    var presenter: ListPresenterInput?

    @IBOutlet var tableView: UITableView!
    
    private var viewModel = ListViewModel(rows: [])

    var viewState: ViewState<ListViewModel> = .empty {
        didSet {
            switch viewState {
                case .loaded(let viewModel):
                    
                    self.viewModel = viewModel
                    tableView.reloadData()
                    break
                case .error:
                    break
                case .loading:
                    break
                case .empty:
                    break
            }
        }
    }

    override func viewDidLoad() {

        super.viewDidLoad()

        title = "Weather list"
        
        tableView.registerCell(ListTableViewCell.self)

        presenter?.viewDidLoad()
    }
}

extension ListViewController: UITableViewDataSource {

    func tableView(_ tableView: UITableView,
                   numberOfRowsInSection section: Int) -> Int {
            return viewModel.rows.count
    }

    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: viewModel.rows[indexPath.row].reuseIdentifier) as? ListTableViewCell else {
            fatalError()
        }
        
        cell.viewModel = viewModel.rows[indexPath.row]
        
        return cell
    }
}
