//
//  AreaEntity.swift
//  TrainingiOSApp2023
//
//  Created by じゅん on 2023/02/05.
//

import Foundation

/// エリアEntity
final internal class AreaEntity: NSObject {
	/// エリアコード
	private(set) var code: String?
	/// エリア名
	private(set) var name: String?
	
	init?(dic: [String: String]?) {
		guard let dic else { return nil }
		code = dic["code"]
		name = dic["name"]
	}
}
