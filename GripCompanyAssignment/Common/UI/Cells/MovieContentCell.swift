//
//  MovieContentCell.swift
//  GripCompanyAssignment
//
//  Created by 김운 on 4/26/24.
//

import UIKit

//import Then
//import SnapKit

class MovieContentCell: UICollectionViewCell {
    
//    struct Metric {
//        static let imageWidth: CGFloat = (Device.Size.width - 48) / 2
//        static let imageHeight: CGFloat = 150
//    }
//    
//    var imageView = UIImageView().then {
//        $0.backgroundColor = .lightGray
//        $0.clipsToBounds = true
//        $0.contentMode = .scaleAspectFill
//    }
//    
//    var titleLabel = UILabel().then {
//        $0.textColor = .black
//        $0.numberOfLines = 2
//        $0.font = UIFont.boldSystemFont(ofSize: 16)
//    }
//    
//    var yearLabel = UILabel().then {
//        $0.textColor = .black
//        $0.font = UIFont.systemFont(ofSize: 14)
//    }
//    
//    var typeLabel = UILabel().then {
//        $0.textColor = .black
//        $0.font = UIFont.systemFont(ofSize: 14)
//    }
//    
//    lazy var favoritesDataButton = UIButton().then {
//        $0.setTitle("favorites_title".localized(), for: .normal)
//        $0.setTitle("favorites_remove_title".localized(), for: .selected)
//        $0.titleLabel?.font = UIFont.systemFont(ofSize: 15)
//        $0.setTitleColor(.black, for: .normal)
//        $0.setTitleColor(.systemBlue, for: .selected)
//        $0.isUserInteractionEnabled = false
//    }
//    
    override init(frame: CGRect) {
        super.init(frame: frame)
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("not implemented")
    }
    
    func config(with content: SearchVO) {

//        if content.poster != "N/A" {
//            self.imageView.setResizeImage(url: content.poster, size: CGSize(width: Metric.imageWidth, height: Metric.imageHeight))
//        }else{
//            self.imageView.image = nil
//        }
//        
//        self.titleLabel.text = content.title
//        self.yearLabel.text = content.year
//        self.typeLabel.text = content.type
//        self.favoritesDataButton.isSelected = content.isLike
    }
}

extension MovieContentCell {
    func layout() {
        
//        self.addSubview(imageView)
//        self.addSubview(titleLabel)
//        self.addSubview(yearLabel)
//        self.addSubview(typeLabel)
//        self.addSubview(favoritesDataButton)
//        
//        imageView.snp.makeConstraints {
//            $0.leading.trailing.equalToSuperview()
//            $0.top.equalTo(5)
//            $0.height.equalTo(150)
//        }
//        
//        titleLabel.snp.makeConstraints {
//            $0.top.equalTo(imageView.snp.bottom).offset(5)
//            $0.leading.equalTo(5)
//            $0.trailing.equalTo(5)
//        }
//        
//        yearLabel.snp.makeConstraints {
//            $0.top.equalTo(titleLabel.snp.bottom).offset(5)
//            $0.leading.equalTo(5)
//            $0.trailing.equalTo(5)
//        }
//        
//        typeLabel.snp.makeConstraints {
//            $0.top.equalTo(yearLabel.snp.bottom).offset(5)
//            $0.leading.equalTo(5)
//            $0.trailing.equalTo(5)
//        }
//        
//        favoritesDataButton.snp.makeConstraints {
//            $0.leading.trailing.equalToSuperview()
//            $0.bottom.equalToSuperview().offset(-10)
//        }
    }
}
