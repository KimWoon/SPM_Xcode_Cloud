//
//  Asset.swift
//  Socar-iOS
//
//  Created by 김운 on 2023/08/19.
//

import UIKit

extension UIImage {
    
    public static var favorite_black = UIImage(named: "_ic24_favorite_black")
    public static var favorite_blue = UIImage(named: "_ic24_favorite_blue")
    public static var favorite_gray = UIImage(named: "_ic24_favorite_gray")
    public static var back = UIImage(named: "ic24_back")
    public static var close = UIImage(named: "ic24_close")
    public static var my_location = UIImage(named: "ic24_my_location")
    public static var current = UIImage(named: "img_current")
    public static var zone_shadow = UIImage(named: "img_zone_shadow")
    public static var img_zone = UIImage(named: "img_zone")
    
}

extension UIFont {
    
    public static var favoriteTitle = UIFont.systemFont(ofSize: 24)
    public static var title = UIFont.systemFont(ofSize: 18)
    public static var subTitle1 = UIFont.systemFont(ofSize: 14)
    public static var subTitle2 = UIFont.systemFont(ofSize: 16)
}

extension UIColor {

    //TODO: 컬러 네이밍 변경 예정 임시
    
    ///374553
    public static var color1 = UIColor(named: "374553")!
    ///898989
    public static var color2 = UIColor(named: "898989")!
    ///EDEDED
    public static var color3 = UIColor(named: "EDEDED")!
    ///28323C
    public static var color4 = UIColor(named: "28323C")!
    ///646F7C
    public static var color5 = UIColor(named: "646F7C")!
    ///28323C
    public static var color6 = UIColor(named: "28323C")!
}
