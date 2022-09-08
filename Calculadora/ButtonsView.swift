//
//  ButtonsView.swift
//  Calculadora
//
//  Created by Natanael Alves Pereira on 08/09/22.
//

import UIKit

class ButtonsView: UIView {

    lazy var viewResult: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .red
        
        return view
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        addView()
        setUpConstraints()
    }
    
    func addView() {
        self.addSubview(viewResult)
    }
    
    private func setUpConstraints(){
        NSLayoutConstraint.activate([
            viewResult.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor),
            viewResult.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            viewResult.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            viewResult.heightAnchor.constraint(equalToConstant: 140),
        
        ])
    }
            
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
