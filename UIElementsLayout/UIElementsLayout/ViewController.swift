//
//  ViewController.swift
//  UIElementsLayout
//
//  Created by natalja.buljko on 22/08/2020.
//  Copyright © 2020 natalja.buljko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var leftButtonUp: UIButton!
    @IBOutlet weak var rightButtonUp: UIButton!
    @IBOutlet weak var leftButtonDown: UIButton!
    @IBOutlet weak var rightButtonDown: UIButton!
    
    
    @IBOutlet var styleOutletCollection: [UIButton]!
    
    @IBOutlet weak var myLabel: UILabel!
    
    @IBOutlet weak var mainImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        styleUI()
        
    }
        
    func styleUI(){
        mainImageView.layer.cornerRadius = 10
        mainImageView.layer.borderWidth = 2
        mainImageView.layer.borderColor = UIColor.black.cgColor
        
        myLabel.layer.cornerRadius = 10
        myLabel.layer.borderWidth = 2
        myLabel.layer.borderColor = UIColor.black.cgColor
        
        styleOutletCollection.forEach { button in button.layer.cornerRadius = 10
            button.layer.borderWidth = 2
            button.layer.borderColor = UIColor.black.cgColor
}
    }
    
    //MARK:- Logic style to myLabel, Buttons and Image
    
    func changeButtonImage(with image: String){
        leftButtonUp.setImage(UIImage(named: "home.png"), for: .normal)
        leftButtonUp.tintColor = .white
        leftButtonUp.imageEdgeInsets = UIEdgeInsets(top: 8, left: 0, bottom: 10, right: 15)
        self.view.backgroundColor = UIColor.black
    }
    
    func changeSecondButtonImage(with image: String){
    rightButtonUp.setImage(UIImage(named: "star.png"), for: .normal)
    rightButtonUp.tintColor = .white
    rightButtonUp.imageEdgeInsets = UIEdgeInsets(top: 8, left: 0, bottom: 10, right: 15)
    self.view.backgroundColor = UIColor.black
        
    func changeThirdButtonImage(with image: String){
    rightButtonDown.setImage(UIImage(named: "star.png"), for: .normal)
    rightButtonDown.tintColor = .white
    rightButtonDown.imageEdgeInsets = UIEdgeInsets(top: 8, left: 0, bottom: 10, right: 15)
        self.view.backgroundColor = UIColor.black
        
    func changeFourthButtonImage(with image: String){
    leftButtonDown.setImage(UIImage(named: "home.png"), for: .normal)
    leftButtonDown.tintColor = .white
    leftButtonDown.imageEdgeInsets = UIEdgeInsets(top: 8, left: 0, bottom: 10, right: 15)
            self.view.backgroundColor = UIColor.black
        
    func changeTextLabel(){
        
    }

    
    //MARK:- IBAction for three more buttons
    
    @IBAction func touchDragOutsideTapped(_ sender: Any) {
        print(touchDragOutsideTapped)
        changeButtonImage(with: "home.png")
    }
    
    }
    
    @IBAction func touchUpInsideTapped(_ sender: Any) {
        print(touchUpInsideTapped)
        changeButtonImage(with: "star.png")
        
    }
    
    @IBAction func touchDownTapped(_ sender: Any) {
        print("touchDownTapped")
        changeButtonImage(with: "star.png")
    }
}
    @IBAction func touchUpOutsideTapped(_ sender: Any) {
        print("touchUpOutsideTapped")
        changeButtonImage(with: "home.png")
        
}



}
