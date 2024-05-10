//
//  UIImageView+Extension.swift
//  GripCompanyAssignment
//
//  Created by 김운 on 4/26/24.
//

import UIKit
//import Kingfisher

extension UIImageView {
    
    func setResizeImage(url:String?,isPlaceHolder:Bool = false, size: CGSize, completion: (() -> Void)? = nil) {
        
//        guard let url = url else {
//            completion?()
//            return
//        }
//        
//        let processor = DownsamplingImageProcessor(size: size)
//        
//        self.kf.setImage(with: URL(string: url),
//                         placeholder: nil,
//                         options: [
//                            .processor(processor),
//                            .scaleFactor(UIScreen.main.scale),
//                            .cacheOriginalImage]) { result in
//           
//                                switch result {
//                                case .success(let data):
//                                    self.image = data.image
//                                    completion?()
//                                    break
//                                default:
//                                    if let _ = self.viewWithTag(78900) {
//                                        completion?()
//                                        return
//                                    }
//                                    completion?()
//                                    break
//                                }
//                            }
    }
}

