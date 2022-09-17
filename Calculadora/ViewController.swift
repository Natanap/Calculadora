//
//  ViewController.swift
//  Calculadora
//
//  Created by Natanael Alves Pereira on 08/09/22.
//

import UIKit

class ViewController: UIViewController {

    var viewResult:ButtonsView?
    
    
    override func loadView() {
        self.viewResult = ButtonsView()
        self.view = viewResult
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

     }


}

