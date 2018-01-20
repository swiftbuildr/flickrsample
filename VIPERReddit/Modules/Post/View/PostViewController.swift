//
// Created by Samuel Ward on 19/01/2018.
// Copyright (c) 2018 Swiftbuildr Ltd. All rights reserved.
//

import UIKit

class PostViewController: UITableViewController, PostView {

    weak var presenter: PostPresenter?
    
    var viewState: ViewState<PostViewModel> = .empty {
        didSet {
            switch viewState {
            case .loaded(_):
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
        
        title = viewState.loadedViewModel?.title
        setupTableView()
    }
    
    override func tableView(_ tableView: UITableView,
                            numberOfRowsInSection section: Int) -> Int {
    
        return 1
    }
    
    override func tableView(_ tableView: UITableView,
                            cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        return UITableViewCell()
    }
    
    private func setupTableView() {
        
        [TitleImageTableViewCell.self,
         ListTableViewCell.self].forEach(tableView.registerCell)
    }
}
