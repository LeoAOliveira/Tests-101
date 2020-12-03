//
//  ViewController.swift
//  Tests 101
//
//  Created by Leonardo Oliveira on 24/11/20.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url: URL = URL(string: "https://binaryjazz.us/wp-json/genrenator/v1/genre/")!
        
        APIManager().consumeAPI(from: url) { (result) in
            switch result {
            case .success(let resultado):
                print(resultado)
            case .failure(let error):
                break
            }
        }
    }


}

