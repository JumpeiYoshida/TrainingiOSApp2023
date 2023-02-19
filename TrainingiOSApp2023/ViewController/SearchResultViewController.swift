//
//  SearchResultViewController.swift
//  TrainingiOSApp2023
//
//  Created by じゅん on 2023/02/04.
//

import UIKit

final internal class SearchResultViewController: UIViewController {
	
	@IBOutlet private weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
		navigationItem.title = "検索結果一覧画面"
		
		setupTableView()
    }
	
	private func setupTableView() {
		tableView.delegate = self
		tableView.dataSource = self
	}
}

extension SearchResultViewController: UITableViewDelegate {
	
}

extension SearchResultViewController: UITableViewDataSource {
	func numberOfSections(in tableView: UITableView) -> Int {
		1
	}
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		1
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		return UITableViewCell(style: .default, reuseIdentifier: "tableViewCell")
	}
}
