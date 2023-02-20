//
//  SearchResultCell.swift
//  TrainingiOSApp2023
//
//  Created by じゅん on 2023/02/20.
//

import UIKit

final internal class SearchResultCell: UITableViewCell {

	/// 店舗画像ImageView
	@IBOutlet private weak var shopImageView: UIImageView!
	/// 店舗名Label
	@IBOutlet private weak var shopNameLabel: UILabel!
	/// ジャンルLabel
	@IBOutlet private weak var genreLabel: UILabel!
	/// 住所Label
	@IBOutlet private weak var addressLabel: UILabel!
	/// こだわりLabel
	@IBOutlet private weak var obsessionLabel: UILabel!
	
	override func prepareForReuse() {
		super.prepareForReuse()
		shopImageView.image = nil
		shopNameLabel.text = ""
		genreLabel.text = ""
		addressLabel.text = ""
		obsessionLabel.text = ""
	}
	
	func setup(entity: GourmetSearchShopEntity) {
		setupShopImageView(urlString: entity.photo?.pcMedium)
		shopNameLabel.text = entity.name
		genreLabel.text = entity.genre?.name
		addressLabel.text = entity.address
		setupObsession(privateRoom: entity.privateRoom ?? "",
					   card: entity.card ?? "",
					   nonSmoking: entity.nonSmoking ?? "")
	}
	
	private func setupShopImageView(urlString: String?) {
		guard let urlString, let url = URL(string: urlString) else { return }
		
		URLSession.shared.dataTask(with: URLRequest(url: url)) { [weak self] data, response, error in
			guard let self, let data else { return }
			DispatchQueue.main.async {
				self.shopImageView.image = UIImage(data: data)
			}
		}.resume()
	}
	
	private func setupObsession(privateRoom: String, card: String, nonSmoking: String) {
		var obsessions = [String]()
		
		// 個室有無
		if !privateRoom.isEmpty, privateRoom != "なし" {
			obsessions.append("個室あり")
		}
		
		// カード利用可
		if !card.isEmpty {
			obsessions.append("カード\(card)")
		}
		
		// 禁煙室有無
		if !nonSmoking.isEmpty {
			obsessions.append(nonSmoking)
		}
		
		obsessionLabel.text = obsessions.joined(separator: ",")
	}
    
}
