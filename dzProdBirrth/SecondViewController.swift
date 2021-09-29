//
//  SecondViewController.swift
//  dzProdBirrth
//
//  Created by Ruslan Dalgatov on 23.09.2021.
//

import UIKit
import SnapKit

class SecondViewController: UIViewController {
    
    let buttonStart = UIButton()
    let labelBR = UILabel()

        
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(labelBR)
        view.addSubview(buttonStart)


        let titlecolor = UIColor(displayP3Red: 137/255, green: 171/255, blue: 219/255, alpha: 1)
        let buttoncolor = UIColor(displayP3Red: 174/255, green: 198/255, blue: 245/255, alpha: 1)

        labelBR.text = "Главный экран"
        labelBR.textColor = titlecolor
        labelBR.layer.borderWidth = 1
        labelBR.textAlignment = .center
        labelBR.backgroundColor = .white
        labelBR.snp.makeConstraints { maker in
            maker.width.equalTo(180)
            maker.height.equalTo(70)
            maker.top.equalTo(80)
            maker.centerX.equalToSuperview()
        }
        
        
        
        buttonStart.setTitle("Выйти", for: .normal)
        buttonStart.backgroundColor = buttoncolor
        buttonStart.layer.cornerRadius = 5
        buttonStart.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        buttonStart.snp.makeConstraints { maker in
            maker.centerY.equalToSuperview()
            maker.width.equalTo(300)
            maker.height.equalTo(50)
            maker.centerX.equalToSuperview()
        }
        buttonStart.addTarget(self, action: #selector(openNextView), for: .touchUpInside)

        
    }


    @objc func openNextView(){
        
        
        let rootVC = ViewController()
        rootVC.modalPresentationStyle = .fullScreen
        present(rootVC, animated: true)
    
    }
    
}

