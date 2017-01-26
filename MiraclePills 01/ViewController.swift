//
//  ViewController.swift
//  MiraclePills 01
//
//  Created by Paul Donlan on 1/12/17.
//  Copyright © 2017 PDonlan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource
{

    @IBOutlet weak var statePicker: UIPickerView!
    
    @IBOutlet weak var countryPicker: UIPickerView!
    
    @IBOutlet weak var stateBtnTitle: UIButton!
    
    @IBOutlet weak var countryBtnTitle: UIButton!
    
    @IBOutlet weak var enterZipCode: UITextField!
    
    @IBOutlet weak var enterZipCodeLabel: UILabel!
    
    @IBOutlet weak var buyNowBtn: UIImageView!
    let states = ["Alabama","Arkansas","Alaska","Arizona","Conneticut","Colorado","California","Hawaii","Illinois"]
    let countries = ["Cantada","Columbia","Cambodia","Chili","Cuba","China","Cyprus"]
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
        countryPicker.dataSource = self
        countryPicker.delegate = self
        
        // Do any additional setup after loading the view, typically from a nib.
    }
//    var rowCount = 0
//    var btnTitleNew = ""
//    var location: [String] = []
    @IBAction func countryButton(_ sender: UIButton)
    {
        countryPicker.isHidden = false
        statePicker.isHidden = true
        enterZipCode.isHidden = true
        enterZipCodeLabel.isHidden = true
        buyNowBtn.isHidden = true
        
    }
    
    @IBAction func stateButton(_ sender: UIButton)
    {
        statePicker.isHidden = false
        countryBtnTitle.isHidden = true
        countryPicker.isHidden = true
        enterZipCode.isHidden = true
        enterZipCodeLabel.isHidden = true
        buyNowBtn.isHidden = true
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int
    {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
    {
        if pickerView == statePicker
        {
            return states.count
            
        } else if pickerView == countryPicker
        {
            return countries.count
        }
        return 0
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
    {
        if pickerView == statePicker
        {
            return states[row]
            
        } else if pickerView == countryPicker
        {
            return countries[row]
        }
        return "error"

    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        if pickerView == statePicker {
            stateBtnTitle.setTitle(self.states[row], for: UIControlState.normal)
            statePicker.isHidden = true
            countryBtnTitle.isHidden = false
        } else if pickerView == countryPicker
        {
            countryBtnTitle.setTitle(self.countries[row], for: UIControlState.normal)
            countryPicker.isHidden = true
        }
        enterZipCode.isHidden = false
        enterZipCodeLabel.isHidden = false
        buyNowBtn.isHidden = false
    }
//    override func didReceiveMemoryWarning()
//    {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
}

