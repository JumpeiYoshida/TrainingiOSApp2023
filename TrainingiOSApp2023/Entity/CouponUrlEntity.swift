//
//  CouponUrlEntity.swift
//  TrainingiOSApp2023
//
//  Created by じゅん on 2023/02/05.
//

import Foundation

/// クーポンURLEntity
final internal class CouponUrlEntity: NSObject {
	/// PC向けURL
	private(set) var pc: String?
	/// スマートフォン向けURL
	private(set) var sp: String?
	
	init?(dic: [String: String]?) {
		guard let dic else { return nil }
		pc = dic["pc"]
		sp = dic["sp"]
	}
}
