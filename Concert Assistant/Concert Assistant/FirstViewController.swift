//
//  FirstViewController.swift
//  Concert Assistant
//
//  Created by MOBOS on 17.03.2018.
//  Copyright © 2018 Frites. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class FirstViewController: UIViewController{
    @IBOutlet weak var cityChoose: UISegmentedControl!
    @IBOutlet weak var tableView: UITableView!

    @IBAction func getInfo(_ sender: Any) {
        var city = "msk"
        switch cityChoose.selectedSegmentIndex {
        case 0 :
            city = "msk"
        case 1 :
            city = "spb"
        default :
            city = "msk"
        }
        print("Будем искать концерты в городе \(city)")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

