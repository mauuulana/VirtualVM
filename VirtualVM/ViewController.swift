//
//  ViewController.swift
//  VirtualVM
//
//  Created by Maulana on 26/03/20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var inputMoneyText: UITextField!
    @IBOutlet weak var returnMoneyImage: UIImageView!
    @IBOutlet weak var returnMoneyLabel: UILabel!
    @IBOutlet weak var warningLabel: UILabel!
    @IBOutlet weak var drinkImage: UIImageView!
    
    var inputMoney = 0
    var multipler = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading
        
        
        
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        let getter = sender.accessibilityIdentifier
        
        if getter == "buttonAqua" {
            multipler = sender.tag
            drinkImage.image = UIImage(named: "Aqua.png")
        } else if getter == "buttonGoodmood" {
            multipler = sender.tag
            drinkImage.image = UIImage(named: "Goodmood.png")
        } else if getter == "buttonCocaCola" {
            multipler = sender.tag
            drinkImage.image = UIImage(named: "CocaCola.png")
        } else if getter == "buttonCimory" {
            multipler = sender.tag
            drinkImage.image = UIImage(named: "Cimory.png")
        } else if getter == "buttonIchitan" {
            multipler = sender.tag
            drinkImage.image = UIImage(named: "Ichitan.png")
        } else if getter == "buttonPocari" {
            multipler = sender.tag
            drinkImage.image = UIImage(named: "PocariSweat.png")
        } else if getter == "buttonSprite" {
            multipler = sender.tag
            drinkImage.image = UIImage(named: "Sprite.png")
        } else if getter == "buttonTehKotak" {
            multipler = sender.tag
            drinkImage.image = UIImage(named: "TehKotak.png")
        } else if getter == "buttonTehPucuk" {
            multipler = sender.tag
            drinkImage.image = UIImage(named: "TehPucuk.png")
        }
        
        buyProcess()
    }
    
    func buyProcess() {
        inputMoney = Int(inputMoneyText.text ?? "") ?? 0
        let buy = inputMoney - multipler
        
        if buy > 0 {
            returnMoneyLabel.text = "Rp \(buy)"
            returnMoneyImage.alpha = 1
            warningLabel.alpha = 0
            drinkImage.alpha = 1
            returnMoneyLabel.alpha = 1
        } else if buy == 0{
            returnMoneyLabel.text = "Rp \(buy)"
            returnMoneyLabel.alpha = 1
            warningLabel.alpha = 0
            drinkImage.alpha = 1
            returnMoneyImage.alpha = 0
        } else if buy < 0 {
            warningLabel.text = "Uang anda kurang"
            warningLabel.alpha = 1
            returnMoneyLabel.alpha = 0
             drinkImage.alpha = 0
            returnMoneyImage.alpha = 0
            
        }
    }

}

