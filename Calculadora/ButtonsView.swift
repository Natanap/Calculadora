//
//  ButtonsView.swift
//  Calculadora
//
//  Created by Natanael Alves Pereira on 08/09/22.
//

import UIKit

class ButtonsView: UIView {

    var resultado = ""
    var digitado = ""
    var valorInserido = [""]
    var valorUm = [""]
    var valorDois = [""]
    
    lazy var viewResult: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .red
        
        return view
    }()
    
    lazy var collection: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let collect = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collect.translatesAutoresizingMaskIntoConstraints = false
        collect.register(ButtonsCollectionViewCell.self, forCellWithReuseIdentifier: ButtonsCollectionViewCell.reuseIdentifier)
        collect.backgroundColor = .white
        return collect
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        addView()
        setUpConstraints()
        collection.dataSource = self
        collection.delegate = self
    
    }
    
    func addView() {
        self.addSubview(viewResult)
        self.addSubview(collection)
    }
    
    private func setUpConstraints(){
        NSLayoutConstraint.activate([
            viewResult.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor),
            viewResult.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            viewResult.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            viewResult.heightAnchor.constraint(equalToConstant: 140),
        
            collection.topAnchor.constraint(equalTo: self.viewResult.bottomAnchor),
            collection.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            collection.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            collection.bottomAnchor.constraint(equalTo: self.bottomAnchor)
        ])
    }
            
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}

