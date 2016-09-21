//
//  ViewController.swift
//  Miracl
//
//  Created by mac on 21/09/2016.
//  Copyright © 2016 Rachidovitch. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    let city = ["Casablanca", "Rabat", "Tanger", "Fès", "Temara", "Agadir", "Tantan", "Meknes", "Dakhla", "Oujeda", "Marakech", "Salé", "Asafi", "Sawira", "Chafchaouen"]
    
    // Mark: Add Outlets
    @IBOutlet weak var logoProduct: UIImageView!
    
    @IBOutlet weak var productName: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    @IBOutlet weak var barLine: UIView!
    @IBOutlet weak var cityName: UILabel!
    @IBOutlet weak var fullName: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var adressStreet: UILabel!
    @IBOutlet weak var adressTextField: UITextField!
    @IBOutlet weak var choseButtonCity: UIButton!
    @IBOutlet weak var cityPicker: UIPickerView!

    @IBOutlet weak var codeZip: UILabel!
    @IBOutlet weak var codeZipTextField: UITextField!
    @IBOutlet weak var buyButton: UIButton!
    
    @IBOutlet weak var choseCityButton: UIPickerView!
    
    @IBOutlet weak var successIndicator: UIImageView!
    
    
    
    // Mark: Add Function and Methode
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.view.backgroundColor = UIColor.white
        
        cityPicker.delegate = self
        cityPicker.dataSource = self
        
        
    }
    
    // Mark: add IBAction
    
    @IBAction func choseCityButtonTapped(_ sender: AnyObject) {
        
        cityPicker.isHidden = false
        
        codeZip.isHidden = true
        codeZipTextField.isHidden = true
        
        buyButton.isHidden = true
    }
    
    
    @IBAction func buyButtonTapped(_ sender: AnyObject) {
        
        logoProduct.isHidden  = true
        nameTextField.isHidden = true
        
        productName.isHidden = true
        
        
        cityPicker.isHidden = true
        
        codeZip.isHidden = true
        codeZipTextField.isHidden = true
        
        buyButton.isHidden = true
        
        productPrice.isHidden = true
        
        adressStreet.isHidden = true
        adressTextField.isHidden = true
        
        barLine.isHidden = true
        fullName.isHidden = true
        
        choseButtonCity.isHidden = true
        cityName.isHidden = true
        
        successIndicator.isHidden = false
        

        
        
    }
    
    
    // Mark: add Function and Methodes to control pickerView
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        return city.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        return city[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        choseButtonCity.setTitle(city[row], for: UIControlState.normal)
        cityPicker.isHidden = true
        
        codeZip.isHidden = false
        codeZipTextField.isHidden = false
        
        buyButton.isHidden = false
    }
    
    


}

