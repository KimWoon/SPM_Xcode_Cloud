//
//  EmptyCell.swift
//  GripCompanyAssignment
//
//  Created by 김운 on 4/27/24.
//

import UIKit
//import SnapKit

class EmptyCell: UICollectionViewCell {
    
//    var emptyTitle = UILabel().then {
//        $0.textColor = .black
//        $0.font = UIFont.systemFont(ofSize: 20)
//        $0.textAlignment = .center
//    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
//        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("not implemented")
    }
    
    func config(with text: String) {
//        emptyTitle.text = text
    }
}

extension EmptyCell {
    
    func layout() {
//        self.addSubview(emptyTitle)
//        
//        emptyTitle.snp.makeConstraints {
//            $0.center.equalToSuperview()
//        }
    }
}
