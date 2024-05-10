//
//  UIViewController+Extension.swift
//  GripCompanyAssignment
//
//  Created by 김운 on 4/28/24.
//

import UIKit

extension UIViewController {
    
    func showAlert(with title: String,
                           description: String? = nil,
                           leftButtonTitle: String? = nil,
                           rightButtonTitle: String? = nil,
                      leftAction: (() -> Void)?,
                      rightAction: (() -> Void)?) {
        
        let alert = UIAlertController(
            title: title,
            message: description,
            preferredStyle: .alert
        )
        
        let action1 = UIAlertAction(title: leftButtonTitle,
                                          style: .default,
                                    handler: {_ in 
            leftAction?()
        })
        
        let action2 = UIAlertAction(title: rightButtonTitle,
                                          style: .default,
                                    handler: { _ in
            rightAction?()
        })
        
        alert.addAction(action1)
        alert.addAction(action2)
        
        present(alert, animated: true, completion: nil)
        
    }
}
