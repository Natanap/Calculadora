//
//  ButtonsView+Extension.swift
//  Calculadora
//
//  Created by Natanael Alves Pereira on 17/09/22.
//

import Foundation
import UIKit

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
