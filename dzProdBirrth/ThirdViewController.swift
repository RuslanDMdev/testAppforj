//
//  ThirdViewController.swift
//  dzProdBirrth
//
//  Created by Ruslan Dalgatov on 23.09.2021.
//

import UIKit

class ThirdViewController: UIViewController {

    var texteditLabel = UILabel()
    var nameLB = UILabel()
    var nameTextField = UITextField()
    var dateLB = UILabel()
    var dateTextField = UITextField()
    var ageLB = UILabel()
    var ageTextField = UITextField()
    var sexLB = UILabel()
    var sexTextField = UITextField()
    var instagramLB = UILabel()
    var instagramTextField = UITextField()
    var lineView = UIView()
    var lineView1 = UIView()
    var lineView2 = UIView()
    var lineView3 = UIView()
    var lineView4 = UIView()
    let titlecolor = UIColor(displayP3Red: 137/255, green: 171/255, blue: 219/255, alpha: 1)
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = ""
        view.backgroundColor = .white
        view.addSubview(texteditLabel)
        view.addSubview(nameLB)
        view.addSubview(nameTextField)
        view.addSubview(dateLB)
        view.addSubview(dateTextField)
        view.addSubview(ageLB)
        view.addSubview(ageTextField)
        view.addSubview(sexLB)
        view.addSubview(sexTextField)
        view.addSubview(instagramLB)
        view.addSubview(instagramTextField)
        view.addSubview(lineView)
        view.addSubview(lineView1)
        view.addSubview(lineView2)
        view.addSubview(lineView3)
        view.addSubview(lineView4)
        
        


        
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Отмена", style: .plain, target: self, action: #selector(backButton))
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Добавить", style: .plain, target: self, action: #selector(addbirthday))
        
        
        nameLB.text = "Имя"
        nameLB.font = UIFont.boldSystemFont(ofSize: 12)
        nameLB.textColor = titlecolor
        nameLB.snp.makeConstraints { maker  in
            maker.top.equalToSuperview().inset(150)
            maker.left.equalTo(30)
        }
        
        nameTextField.text = "Введите имя"
        nameTextField.textColor = .gray
        nameTextField.clearButtonMode = .whileEditing
        nameTextField.snp.makeConstraints { maker in
            maker.top.equalTo(nameLB).inset(20)
            maker.left.equalTo(30)
            maker.width.equalTo(300)
        }
        
        

        lineView.backgroundColor = .gray
        lineView.snp.makeConstraints { maker in
            maker.left.equalTo(30)
            maker.width.equalTo(nameTextField)
            maker.height.equalTo(1)
            maker.bottom.equalTo(nameTextField).inset(-10)
        }
        
        dateLB.text = "Дата"
        dateLB.font = UIFont.boldSystemFont(ofSize: 12)
        dateLB.textColor = titlecolor
        dateLB.snp.makeConstraints { maker in
            maker.top.equalTo(lineView).inset(40)
            maker.left.equalTo(30)
        }
        
        dateTextField.text = "Введите дату"
        dateTextField.textColor = .gray
        dateTextField.clearButtonMode = .whileEditing
        dateTextField.snp.makeConstraints { maker  in
            maker.top.equalTo(dateLB).inset(20)
            maker.left.equalTo(30)
            maker.width.equalTo(300)
        }
        
        lineView2.backgroundColor = .gray
        lineView2.snp.makeConstraints { maker in
            maker.left.equalTo(30)
            maker.width.equalTo(dateTextField)
            maker.height.equalTo(1)
            maker.bottom.equalTo(dateTextField).inset(-10)
        }
        
        ageLB.text = "Возраст"
        ageLB.font = UIFont.boldSystemFont(ofSize: 12)
        ageLB.textColor = titlecolor
        ageLB.snp.makeConstraints { maker in
            maker.top.equalTo(lineView2).inset(40)
            maker.left.equalTo(30)
        }
        
        ageTextField.text = "Введите возраст"
        ageTextField.textColor = .gray
        ageTextField.clearButtonMode = .whileEditing
        ageTextField.snp.makeConstraints { maker  in
            maker.top.equalTo(ageLB).inset(20)
            maker.left.equalTo(30)
            maker.width.equalTo(300)
        }
        
        lineView3.backgroundColor = .gray
        lineView3.snp.makeConstraints { maker in
            maker.left.equalTo(30)
            maker.width.equalTo(ageTextField)
            maker.height.equalTo(1)
            maker.bottom.equalTo(ageTextField).inset(-10)
        }
        
        sexLB.text = "Пол"
        sexLB.font = UIFont.boldSystemFont(ofSize: 12)
        sexLB.textColor = titlecolor
        sexLB.snp.makeConstraints { maker in
            maker.top.equalTo(lineView3).inset(40)
            maker.left.equalTo(30)
        }
        
        sexTextField.text = "Введите пол"
        sexTextField.textColor = .gray
        sexTextField.clearButtonMode = .whileEditing
        sexTextField.snp.makeConstraints { maker  in
            maker.top.equalTo(sexLB).inset(20)
            maker.left.equalTo(30)
            maker.width.equalTo(300)
        }
        
        lineView4.backgroundColor = .gray
        lineView4.snp.makeConstraints { maker in
            maker.left.equalTo(30)
            maker.width.equalTo(sexTextField)
            maker.height.equalTo(1)
            maker.bottom.equalTo(sexTextField).inset(-10)
        }
        
        instagramLB.text = "Instagram"
        instagramLB.font = UIFont.boldSystemFont(ofSize: 12)
        instagramLB.textColor = titlecolor
        instagramLB.snp.makeConstraints { maker in
            maker.top.equalTo(lineView4).inset(40)
            maker.left.equalTo(30)
        }
        
        instagramTextField.text = "Введите Instagram"
        instagramTextField.textColor = .gray
        instagramTextField.clearButtonMode = .whileEditing
        instagramTextField.snp.makeConstraints { maker  in
            maker.top.equalTo(instagramLB).inset(20)
            maker.left.equalTo(30)
            maker.width.equalTo(300)
        }
        
        lineView1.backgroundColor = .gray
        lineView1.snp.makeConstraints { maker in
            maker.left.equalTo(30)
            maker.width.equalTo(instagramTextField)
            maker.height.equalTo(1)
            maker.bottom.equalTo(instagramTextField).inset(-10)
        }
        
        
    }
  
    @objc func backButton(){
        

        let rootVC = SecondViewController()
        let navVC = UINavigationController(rootViewController: rootVC)
        navVC.modalPresentationStyle = .fullScreen
        present(navVC, animated: true)
    
    }
    
    @objc func addbirthday(){
        
//        let vc = ViewController()
//        vc.modalPresentationStyle = .formSheet
//        present(vc, animated: true)
//
    }

}
