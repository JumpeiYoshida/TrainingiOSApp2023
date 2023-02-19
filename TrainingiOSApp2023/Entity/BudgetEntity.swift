//
//  BudgetEntity.swift
//  TrainingiOSApp2023
//
//  Created by じゅん on 2023/02/05.
//

import Foundation

/// ディナー予算Entity
final internal class BudgetEntity: NSObject {
	/// 検索用ディナー予算コード
	private(set) var code: String?
	/// 検索用ディナー予算
	private(set) var name: String?
	/// 平均ディナー予算
	private(set) var average: String?
	
	init?(dic: [String: String]?) {
		guard let dic else { return nil }
		code = dic["code"]
		name = dic["name"]
		average = dic["average"]
	}
}
