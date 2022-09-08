//
//  ViewController.swift
//  Calculadora
//
//  Created by Natanael Alves Pereira on 08/09/22.
//

import UIKit

class ViewController: UIViewController {

    lazy var viewResult = ButtonsView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = self.viewResult

     }


}

