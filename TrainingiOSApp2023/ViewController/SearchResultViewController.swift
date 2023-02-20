//
//  SearchResultViewController.swift
//  TrainingiOSApp2023
//
//  Created by じゅん on 2023/02/04.
//

import UIKit

final internal class SearchResultViewController: UIViewController {
	
	@IBOutlet private weak var tableView: UITableView!
	
	private var shopEntities = [GourmetSearchShopEntity]()

    override func viewDidLoad() {
        super.viewDidLoad()
		navigationItem.title = "検索結果一覧画面"
		
		setupTableView()
		fetchList()
    }
	
	private func setupTableView() {
		tableView.delegate = self
		tableView.dataSource = self
		tableView.register(UINib(nibName: "SearchResultCell", bundle: nil), forCellReuseIdentifier: "SearchResultCell")
	}
	
	private func fetchList() {
		GourmetSearchFetcher().fetch { [weak self] entities in
			guard let self else { return }
			DispatchQueue.main.async {
				self.shopEntities = entities
				self.tableView.reloadData()
			}
		}
	}
}

extension SearchResultViewController: UITableViewDelegate {
	
}

extension SearchResultViewController: UITableViewDataSource {
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		shopEntities.count
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		guard let cell = tableView
			.dequeueReusableCell(withIdentifier: "SearchResultCell", for: indexPath) as? SearchResultCell,
			  shopEntities.count > indexPath.row else {
			return UITableViewCell()
		}
		
		cell.setup(entity: shopEntities[indexPath.row])
		return cell
	}
}
