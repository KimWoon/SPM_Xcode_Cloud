//
//  CarInfoHeaderView.swift
//  Socar-iOS
//
//  Created by 김운 on 2023/08/20.
//

import UIKit

//import SnapKit
//import Then

class CarInfoHeaderView: UICollectionReusableView {
    
//    public static let id = "section-header-element-kind"
//    
//    var backView = UIView().then {
//        $0.backgroundColor = .white
//    }
//    
//    var locationLabel = UILabel().then {
//        $0.textColor = .color4
//        $0.font = .title
//    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        layout()
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func config(with title: String) {
//        locationLabel.text = title
    }
}

extension CarInfoHeaderView {
    
    func layout() {
//        self.addSubview(backView)
//        
//        backView.snp.makeConstraints {
//            $0.top.leading.trailing.equalToSuperview()
//            $0.height.equalTo(56)
//        }
//        
//        backView.addSubview(locationLabel)
//        
//        locationLabel.snp.makeConstraints {
//            $0.top.equalTo(16)
//            $0.leading.equalTo(24)
//            $0.trailing.equalToSuperview().offset(-72)
//        }
    }
}
