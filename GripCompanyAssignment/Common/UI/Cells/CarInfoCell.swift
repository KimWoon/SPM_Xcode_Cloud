//
//  CarInfoCell.swift
//  Socar-iOS
//
//  Created by 김운 on 2023/08/20.
//

import UIKit

//import Then
//import SnapKit

class CarInfoCell: UICollectionViewCell {
    
//    var titleLabel = UILabel().then {
//        $0.textColor = .color1
//        $0.font = .title
//        $0.numberOfLines = 1
//    }
//    
//    var descriptionLabel = UILabel().then {
//        $0.textColor = .color2
//        $0.font = .subTitle1
//        $0.numberOfLines = 3
//    }
//    
//    var imageView = UIImageView().then {
//        $0.backgroundColor = .red
//        $0.clipsToBounds = true
//        $0.contentMode = .scaleAspectFill
//    }
//    
//    var priceLabel = UILabel().then {
//        $0.textColor = .color1
//        $0.font = .subTitle1
//        $0.numberOfLines = 3
//    }
//    
//    var reviewCountLabel = UILabel().then {
//        $0.textColor = .color1
//        $0.font = .subTitle1
//        $0.numberOfLines = 3
//    }
//    
//    var seperatorView = UIView().then {
//        $0.backgroundColor = .color3
//    }
//    
//    var backView = UIView().then {
//        $0.backgroundColor = .clear
//    }
//    
//    var stackView = UIStackView().then{
//        $0.axis = .vertical
//        $0.isLayoutMarginsRelativeArrangement = true
//    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
//        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("not implemented")
    }
    
    func config(with item: FoodDTO) {
//        titleLabel.text = item.title
//        descriptionLabel.text = item.description
//        descriptionLabel.isHidden = descriptionLabel.text == ""
//        priceLabel.text = "\(item.price ?? "")원"
//        reviewCountLabel.isHidden = item.reviewsCount == "0"
//        reviewCountLabel.text = "리뷰 \(item.reviewsCount ?? "")"
    }
}

extension CarInfoCell {
    func layout() {
//        self.addSubview(backView)
//        self.addSubview(seperatorView)
//        
//        backView.snp.makeConstraints {
//            $0.top.bottom.leading.trailing.equalToSuperview()
//        }
//        
//        backView.do {
//            $0.addSubview(stackView)
//            $0.addSubview(imageView)
//        }
//        
//        stackView.do {
//            $0.addArrangedSubview(titleLabel)
//            $0.addArrangedSubview(descriptionLabel)
//            $0.addArrangedSubview(priceLabel)
//            $0.addArrangedSubview(reviewCountLabel)
//            
//            $0.setCustomSpacing(8, after: titleLabel)
//            $0.setCustomSpacing(8, after: descriptionLabel)
//            $0.setCustomSpacing(8, after: priceLabel)
//        }
//        
//        stackView.snp.makeConstraints {
//            $0.leading.equalTo(20)
//            $0.trailing.equalToSuperview().offset(-130)
//            $0.top.equalToSuperview().offset(10)
//            $0.bottom.equalToSuperview().offset(-10)
//        }
//        
//        imageView.snp.makeConstraints {
//            $0.top.equalTo(10)
//            $0.trailing.equalToSuperview().offset(-10)
//            $0.width.height.equalTo(70)
//        }
//        
//        seperatorView.snp.makeConstraints {
//            $0.height.equalTo(1)
//            $0.leading.trailing.equalToSuperview()
//            $0.bottom.equalToSuperview()
//        }
    }
}
