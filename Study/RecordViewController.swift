//
//  RecordViewController.swift
//  Study
//
//  Created by Александр on 2.03.23.
//

import UIKit

class RecordViewController: UIViewController {
    @IBOutlet weak var recordLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let record = UserDefaults.standard.integer(forKey: KeysUserDefaults.recordGame)
        if record != 0 {
            recordLabel.text = "Your record is \(record)"
        }else{
            recordLabel.text = "Your record isn't found"
        }
    }
    
    @IBAction func closeVC(_ sender: Any) {dismiss(animated: true, completion: nil)
    }
}
