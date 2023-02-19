//
//  GourmetSearchShopEntity.swift
//  TrainingiOSApp2023
//
//  Created by じゅん on 2023/02/05.
//

import Foundation

/// グルメサーチAPIお店Entity
final internal class GourmetSearchShopEntity: NSObject {
	/// お店ID
	private(set) var shopId: String?
	/// 掲載店名
	private(set) var name: String?
	/// ロゴ画像(URL)
	private(set) var logoImage: String?
	/// 掲載店名かな
	private(set) var nameKana: String?
	/// 住所
	private(set) var address: String?
	/// 最寄駅名
	private(set) var stationName: String?
	/// 携帯用クーポン掲載 0:あり 1:なし
	private(set) var ktaiCoupon: String?
	/// 大サービスエリア
	private(set) var largeServiceArea: AreaEntity?
	/// サービスエリア
	private(set) var serviceArea: AreaEntity?
	/// 大エリア
	private(set) var largeArea: AreaEntity?
	/// 中エリア
	private(set) var middleArea: AreaEntity?
	/// 小エリア
	private(set) var smallArea: AreaEntity?
	/// 緯度
	private(set) var lat: Double?
	/// 経度
	private(set) var lng: Double?
	/// お店ジャンル
	private(set) var genre: GenreEntity?
	/// お店サブジャンル
	private(set) var subGenre: GenreEntity?
	/// ディナー予算
	private(set) var budget: BudgetEntity?
	/// 料金備考
	private(set) var budgetMemo: String?
	/// お店キャッチ
	private(set) var catchText: String?
	/// 総席数
	private(set) var capacity: Int?
	/// 交通アクセス
	private(set) var access: String?
	/// 携帯用交通アクセス
	private(set) var mobileAccess: String?
	/// PC向け店舗URL
	private(set) var pcUrl: String?
	/// 写真
	private(set) var photo: PhotoEntity?
	/// 営業時間
	private(set) var open: String?
	/// 定休日
	private(set) var close: String?
	/// 最大宴会収容人数
	private(set) var partyCapacity: Int?
	/// WiFI有無
	private(set) var wifi: String?
	/// ウェディング・二次会
	private(set) var wedding: String?
	/// コース
	private(set) var course: String?
	/// 飲み放題
	private(set) var freeDrink: String?
	/// 食べ放題
	private(set) var freeFood: String?
	/// 個室
	private(set) var privateRoom: String?
	/// 掘りごたつ
	private(set) var horigotatsu: String?
	/// 座敷
	private(set) var tatami: String?
	/// カード可
	private(set) var card: String?
	/// 禁煙席
	private(set) var nonSmoking: String?
	/// 貸切可
	private(set) var charter: String?
	/// 携帯電話OK
	private(set) var ktai: String?
	/// 駐車場
	private(set) var parking: String?
	/// バリアフリー
	private(set) var barrierFree: String?
	/// その他施設
	private(set) var otherMemo: String?
	/// ソムリエ
	private(set) var sommelier: String?
	/// オープンエア
	private(set) var openAir: String?
	/// ライブ・ショー
	private(set) var show: String?
	/// エンタメ機器
	private(set) var equipment: String?
	/// カラオケ
	private(set) var karaoke: String?
	/// バンド演奏可
	private(set) var band: String?
	/// TV・プロジェクター
	private(set) var tv: String?
	/// 英語メニュー
	private(set) var english: String?
	/// ペット可
	private(set) var pet: String?
	/// お子様連れ
	private(set) var child: String?
	/// ランチ
	private(set) var lunch: String?
	/// 23時以降も営業
	private(set) var midnight: String?
	/// 備考
	private(set) var shopDetailMemo: String?
	/// クーポンURL
	private(set) var couponUrls: CouponUrlEntity?
	
	init?(dic: [String: Any]?) {
		guard let dic else { return nil }
		
		shopId = dic["id"] as? String
		name = dic["name"] as? String
		logoImage = dic["logo_image"] as? String
		nameKana = dic["name_kana"] as? String
		address = dic["address"] as? String
		stationName = dic["station_name"] as? String
		ktaiCoupon = dic["ktai_coupon"] as? String
		largeServiceArea = AreaEntity(dic: dic["large_service_area"] as? [String: String])
		serviceArea = AreaEntity(dic: dic["service_area"] as? [String: String])
		largeArea = AreaEntity(dic: dic["large_area"] as? [String: String])
		middleArea = AreaEntity(dic: dic["middle_area"] as? [String: String])
		smallArea = AreaEntity(dic: dic["small_area"] as? [String: String])
		lat = dic["lat"] as? Double
		lng = dic["lng"] as? Double
		genre = GenreEntity(dic: dic["genre"] as? [String: String])
		subGenre = GenreEntity(dic: dic["sub_genre"] as? [String: String])
		budget = BudgetEntity(dic: dic["budget"] as? [String: String])
		budgetMemo = dic["budget_memo"] as? String
		catchText = dic["catch"] as? String
		capacity = dic["capacity"] as? Int
		access = dic["access"] as? String
		mobileAccess = dic["mobile_access"] as? String
		if let urlsDic = dic["urls"] as? [String: String] {
			pcUrl = urlsDic["pc"]
		}
		photo = PhotoEntity(dic: dic["photo"] as? [String: Any])
		open = dic["open"] as? String
		close = dic["close"] as? String
		partyCapacity = dic["party_capacity"] as? Int
		wifi = dic["wifi"] as? String
		wedding = dic["wedding"] as? String
		course = dic["course"] as? String
		freeDrink = dic["free_drink"] as? String
		freeFood = dic["free_food"] as? String
		privateRoom = dic["private_room"] as? String
		horigotatsu = dic["horigotatsu"] as? String
		tatami = dic["tatami"] as? String
		card = dic["card"] as? String
		nonSmoking = dic["non_smoking"] as? String
		charter = dic["charter"] as? String
		ktai = dic["ktai"] as? String
		parking = dic["parking"] as? String
		barrierFree = dic["barrier_free"] as? String
		otherMemo = dic["other_memo"] as? String
		sommelier = dic["sommelier"] as? String
		openAir = dic["open_air"] as? String
		show = dic["show"] as? String
		equipment = dic["equipment"] as? String
		karaoke = dic["karaoke"] as? String
		band = dic["band"] as? String
		tv = dic["tv"] as? String
		english = dic["english"] as? String
		pet = dic["pet"] as? String
		child = dic["child"] as? String
		lunch = dic["lunch"] as? String
		midnight = dic["midnight"] as? String
		shopDetailMemo = dic["shop_detail_memo"] as? String
		couponUrls = CouponUrlEntity(dic: dic["coupon_urls"] as? [String: String])
	}
}
