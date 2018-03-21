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

class FirstViewController: UIViewController {
    func sendAutomaticRequest(url : String) {
        Alamofire.request(url).responseJSON { response in
            print("Request: \(String(describing: response.request))")  // original url request
            print("Response: \(String(describing: response.response))") // http url response
            print("Result: \(response.result)")                         // response serialization result
            
            if let json = response.result.value {
                print("JSON: \(json)") // serialized json response
            }
            
            if let data = response.data, let utf8Text = String(data: data, encoding: .utf8) {
                print("Data: \(utf8Text)")
                // original server data as UTF8 string
            }
        }
    }
    
    @IBAction func sendAnRequest(_sender: Any) {
        let url = "https://kudago.com/public-api/v1.4/places/?lang=&fields=&expand=&order_by=&text_format=&ids=&location=&has_showings=&showing_since=1444385206&showing_until=1444385206&categories=airports,-anticafe&lon=&lat=&radius="
        Alamofire.request(url).responseJSON { response in
            print("Request: \(String(describing: response.request))")  // original url request
            print("Response: \(String(describing: response.response))") // http url response
            print("Result: \(response.result)")                         // response serialization result
            
            if let json = response.result.value {
                print("JSON: \(json)") // serialized json response
            }
            
            if let data = response.data, let utf8Text = String(data: data, encoding: .utf8) {
                print("Data: \(utf8Text)")
                // original server data as UTF8 string
            }
        }
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

