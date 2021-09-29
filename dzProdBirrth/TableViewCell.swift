//
//  TableViewCell.swift
//  dzProdBirrth
//
//  Created by Ruslan Dalgatov on 23.09.2021.
//

import UIKit
import SnapKit

class TableViewCell: UITableViewCell {

    let courseName = UILabel()
    let secondName = UILabel()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.addSubview(courseName)
        contentView.addSubview(secondName)
        secondName.textColor = .gray

        courseName.snp.makeConstraints {maker in
            maker.centerY.equalToSuperview()
            maker.left.equalTo(20)
        }
        
        secondName.snp.makeConstraints {maker in
            maker.centerY.equalToSuperview()
            maker.right.equalTo(-20)
        }

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    var birthdays: BirthDay? {
      didSet {
        courseName.text = birthdays?.name
      }
    }
    
}
