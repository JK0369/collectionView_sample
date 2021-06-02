//
//  MyCollectionViewCell.swift
//  CollectionViewSample
//
//  Created by 김종권 on 2021/06/02.
//

import UIKit

class MyCollectionViewCell: UICollectionViewCell {

    static let identifier = "MyCollectionViewCell"

    @IBOutlet weak var titleLabel: UILabel!

    var data: String? {
        didSet {
            titleLabel.text = data
        }
    }

}
