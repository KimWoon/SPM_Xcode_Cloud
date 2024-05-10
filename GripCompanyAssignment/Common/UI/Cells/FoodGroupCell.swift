//
//  FoodGroupCell.swift
//  GripCompanyAssignment
//
//  Created by 김운 on 5/3/24.
//

import UIKit

//import Then
//import SnapKit

class FoodGroupCell: UICollectionViewCell {
    
//    override var isSelected: Bool {
//        didSet {
//            if isSelected {
//                self.backgroundColor = .black
//                self.titleLabel.textColor = .white
//            }else{
//                self.backgroundColor = .white
//                self.titleLabel.textColor = .color1
//            }
//        }
//    }
    
//    var titleLabel = UILabel().then {
//        $0.textColor = .color1
//        $0.font = .title
//        $0.numberOfLines = 1
//    }
//    
//    var stackView = UIStackView().then{
//        $0.axis = .vertical
//        $0.isLayoutMarginsRelativeArrangement = true
//    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
//        self.layer.cornerRadius = 16
//        self.layer.borderColor = UIColor.color1.cgColor
//        self.layer.borderWidth = 1
//        
//        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("not implemented")
    }
    
    func config(with div: String) {
//        titleLabel.text = div
    }
}

extension FoodGroupCell {
    
    func layout() {
        
//        self.addSubview(stackView)
//
//        stackView.snp.makeConstraints {
//            $0.leading.equalTo(5)
//            $0.trailing.equalToSuperview().offset(-5)
//            $0.top.bottom.equalToSuperview()
//        }
//        
//        stackView.do {
//            $0.addArrangedSubview(titleLabel)
//        }
    }
}
