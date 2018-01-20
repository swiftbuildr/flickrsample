//
// Created by Samuel Ward on 19/01/2018.
// Copyright (c) 2018 Swiftbuildr Ltd. All rights reserved.
//

import UIKit

class WeatherDetailViewController: UITableViewController, WeatherDetailView {

    weak var presenter: WeatherDetailPresenter?
    
    private var viewModel = PostViewModel(rows: [])
    
    var viewState: ViewState<PostViewModel> = .empty {
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
        
        title = viewModel.title
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
    
    private func setupTableView() {
        
        [TitleImageTableViewCell.self,
         ListTableViewCell.self].forEach(tableView.registerCell)
        
        let refreshControl = UIRefreshControl()
        tableView.refreshControl = refreshControl
        refreshControl.addTarget(self, action: #selector(refreshTriggered(_:)), for: UIControlEvents.valueChanged)
    }
}
