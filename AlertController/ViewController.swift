//
//  ViewController.swift
//  AlertController
//
//  Created by Anton Kaliuzhnyi on 6/2/18.
//  Copyright © 2018 MarK. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func showAlertConvenienceAction(_ sender: UIButton) {
        UIAlertController(title: "Delete items?")
            .action(title: "Cancel", style: .cancel)
            .action(title: "Delete", style: .destructive) {
                print("Delete everything!")
            }
            .present(on: self)
    }
    
    @IBAction func showAlertStandardAction(_ sender: UIButton) {
        let alert = UIAlertController(title: "Delete items?", message: nil, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        alert.addAction(UIAlertAction(title: "Delete", style: .destructive, handler: { action in
            print("Delete everything!")
        }))
        self.present(alert, animated: true, completion: nil)
    }
    
}
