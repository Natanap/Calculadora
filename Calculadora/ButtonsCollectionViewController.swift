//
//  ButtonsCollectionViewController.swift
//  Calculadora
//
//  Created by Natanael Alves Pereira on 08/09/22.
//

import UIKit

class ButtonsCollectionViewController: UICollectionViewController , UICollectionViewDelegateFlowLayout {

    
    var valorInserido = [""]
    var valorUm = [""]
    var valorDois = [""]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.backgroundColor = .white
       
        self.collectionView.register(ButtonsCollectionViewCell.self, forCellWithReuseIdentifier: ButtonsCollectionViewCell.reuseIdentifier)
        collectionView.dataSource = self
        
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
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
            width: (view.frame.size.width/4)-4,
            height: (view.frame.size.width/4)-4
        )
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let valor:String = Valores.operadoresNumerais[indexPath.row]
        
        if valor == "+"  {
            valorUm = valorInserido
            print(valorUm)
        }else{
            valorInserido.append(valor)
            valorDois = valorInserido
            print(valorDois)
        }
//
//        if valor == "-"{
//            valorUm = valorInserido
//            print(valorUm)
//        }
//
//        if valor == "/"{
//            valorUm = valorInserido
//            print(valorUm)
//        }
//
//        if valor == "x"{
//            valorUm = valorInserido
//            print(valorUm)
//        }
//
        
        
//        print(valorInserido)
    }
    
    
}
