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


extension ButtonsView: UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! ButtonsCollectionViewCell
        cell.textLabel.text = Valores.operadoresNumerais[indexPath.row]
        cell.backgroundColor = .systemGreen
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 1, left: 1, bottom: 1, right: 1)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(
            width: (self.frame.size.width/4)-4,
            height: (self.frame.size.width/4)-4
        )
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        
            if Valores.operadoresNumerais[indexPath.row] == "+" {
            
                if resultado.count<1{
                    resultado = digitado
                    digitado = ""
                
                } else {
                    let r: Int = Int(resultado) ?? 0
                    let d: Int = Int(digitado) ?? 0
                    resultado = "\(r + d)"
                }
            } else {
                digitado = "\(digitado)\(Valores.operadoresNumerais[indexPath.row])"
            }
        
                print("Digitado: \(digitado)")
                
                print("Resultado: \(resultado)")
        }
}
