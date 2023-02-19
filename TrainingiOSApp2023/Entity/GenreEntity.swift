//
//  GenreEntity.swift
//  TrainingiOSApp2023
//
//  Created by じゅん on 2023/02/05.
//

import Foundation

/// お店ジャンルEntity
final internal class GenreEntity: NSObject {
	/// お店ジャンルコード
	private(set) var code: String?
	/// お店ジャンル名
	private(set) var name: String?
	/// お店ジャンルキャッチ
	private(set) var catchText: String?
	
	init?(dic: [String: String]?) {
		guard let dic else { return nil }
		code = dic["code"]
		name = dic["name"]
		catchText = dic["catch"]
	}
}
