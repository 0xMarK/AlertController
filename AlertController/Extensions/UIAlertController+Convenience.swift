//
//  UIAlertController+Convenience.swift
//  AlertController
//
//  Created by Anton Kaliuzhnyi on 6/2/18.
//  Copyright © 2018 MarK. All rights reserved.
//

import UIKit

extension UIAlertController {
    
    public convenience init(title: String? = nil, message: String? = nil) {
        self.init(title: title, message: message, preferredStyle: .alert)
    }
    
    func action(title: String? = nil, style: UIAlertActionStyle = .default, handler: (() -> Void)? = nil) -> Self {
        var actionHandler: ((UIAlertAction) -> Void)?
        if handler != nil {
            actionHandler = { action in
                handler?()
            }
        }
        let action = UIAlertAction(title: title, style: style, handler: actionHandler)
        self.addAction(action)
        return self
    }

    func present(on viewController: UIViewController? = nil, animated: Bool? = true, completion: (() -> Void)? = nil) {
        if let viewController = viewController {
            viewController.present(self, animated: animated ?? true, completion: completion)
        } else {
            UIApplication.shared.delegate?.window??.rootViewController?.present(self, animated: animated ?? true, completion: completion)
        }
    }
    
}
