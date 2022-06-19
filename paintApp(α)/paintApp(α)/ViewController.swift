//
//  ViewController.swift
//  paintApp(α)
//
//  Created by user on R 4/03/15.
//

import UIKit

class ViewController: UIViewController {
    var alertYobidasi: UIAlertController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    //アラート表示用ボタン
    @IBAction func alertTest(_ sender: Any){
        popumMassage(title: "テスト１", massage: "テスト２")
    }
    //アラート
    func popumMassage(title:String,massage:String)
    {
        alertYobidasi = UIAlertController(title: title, message: massage, preferredStyle: .alert)
        present(alertYobidasi, animated: true, completion:{
            self.alertYobidasi.view.superview?.isUserInteractionEnabled = true
            self.alertYobidasi.view.superview?.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.closeAlert)))
        })
    }
    @objc func closeAlert() {
        alertYobidasi.dismiss(animated: true, completion: nil)
        alertYobidasi = nil
    }
}
