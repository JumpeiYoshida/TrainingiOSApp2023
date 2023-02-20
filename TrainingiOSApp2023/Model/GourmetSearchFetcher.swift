//
//  GourmetSearchFetcher.swift
//  TrainingiOSApp2023
//
//  Created by じゅん on 2023/02/04.
//

import Foundation

/// グルメサーチAPIFetcher
final internal class GourmetSearchFetcher: NSObject {
	private let kRequestUrl = "http://webservice.recruit.co.jp/hotpepper/gourmet/v1/"
	private let kQueryItems = [URLQueryItem(name: "key", value: kApiKey),
							   URLQueryItem(name: "large_area", value: "Z011"),
							   URLQueryItem(name: "count", value: "100"),
							   URLQueryItem(name: "format", value: "json")]
	

	func fetch(complete: @escaping ([GourmetSearchShopEntity]) -> Void) {
		guard let requestUrl = URL(string: kRequestUrl)?.addQueryItems(kQueryItems) else { return complete([]) }
		
		URLSession.shared.dataTask(with: URLRequest(url: requestUrl)) { data, response, error in
			guard let data else { return complete([]) }
			
			// エラー処理は後で
			guard error == nil else { return complete([]) }
			
			do {
				let json = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any]
				let results = json?["results"] as? [String: Any]
				let shops = results?["shop"] as? [[String: Any]] ?? []
				
				let shopEntities = shops.compactMap { shop -> GourmetSearchShopEntity? in
					return GourmetSearchShopEntity(dic: shop)
				}
				
				complete(shopEntities)
			} catch {
				fatalError()
			}
		}.resume()
	}
}
