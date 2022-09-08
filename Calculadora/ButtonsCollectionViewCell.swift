//
//  ButtonsCollectionViewCell.swift
//  Calculadora
//
//  Created by Natanael Alves Pereira on 08/09/22.
//

import UIKit

class ButtonsCollectionViewCell: UICollectionViewCell {
    
    static let reuseIdentifier = "Cell"
    
    static let operadoresNumerais = ["Ac", "Clear", "%" , "/" , "7" , "8" , "9", "x" , "4", "5", "6", "-", "1", "2","3", "+", "", "0", "," , "="]
    
    var textLabel: UILabel = {
        let label = UILabel()
        label.text = "Teste"
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "AvenirNext-Medium", size: 20.0) ?? UIFont.systemFont(ofSize: 20.0)
        label.textColor = .red
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(textLabel)
        setUpConstraints()

    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        textLabel.frame = contentView.bounds
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
    }
    
    func setUpConstraints() {
        NSLayoutConstraint.activate([
            textLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            textLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor),
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
