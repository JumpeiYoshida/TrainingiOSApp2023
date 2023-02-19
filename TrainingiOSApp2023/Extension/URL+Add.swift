//
//  URL+Add.swift
//  TrainingiOSApp2023
//
//  Created by じゅん on 2023/02/19.
//

import Foundation

extension URL {
	func addQueryItems(_ queryItems: [URLQueryItem]) -> URL? {
		guard var components = URLComponents(url: self, resolvingAgainstBaseURL: baseURL != nil) else { return nil }
		components.queryItems = queryItems + (components.queryItems ?? [])
		return components.url
	}
}
