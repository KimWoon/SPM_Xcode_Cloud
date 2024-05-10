//
//  Device.swift
//  kakaobank-iOS
//
//  Created by 김운 on 2023/09/18.
//

import Foundation
import UIKit

struct Device {
    /// Device size 정보를 제공한다.
    struct Size {
        
        /// 디바이스 전체 Width
        static let width = CGFloat(UIScreen.main.bounds.width)
        /// 디바이스 전체 Height
        static let height = CGFloat(UIScreen.main.bounds.height)
    }
}

