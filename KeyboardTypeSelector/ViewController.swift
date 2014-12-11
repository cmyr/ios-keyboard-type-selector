//
//  ViewController.swift
//  KeyboardTypeSelector
//
//  Created by Colin Rofls on 2014-11-15.
//  Copyright (c) 2014 whirlscape. All rights reserved.
//

import UIKit



class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var pickerView: UIPickerView!

    let indexsForKeyboardTypes = [
        0: UIKeyboardType.ASCIICapable,
        1: UIKeyboardType.DecimalPad,
        2: UIKeyboardType.Default,
        3: UIKeyboardType.EmailAddress,
        4: UIKeyboardType.NamePhonePad,
        5: UIKeyboardType.NumberPad,
        6: UIKeyboardType.NumbersAndPunctuation,
        7: UIKeyboardType.PhonePad,
        8: UIKeyboardType.Twitter,
        9: UIKeyboardType.URL,
        10: UIKeyboardType.WebSearch
        ]

    let indexesAndNames = [
        0: "ASCIICapable",
        1: "DecimalPad",
        2: "Default",
        3: "EmailAddress",
        4: "NamePhonePad",
        5: "NumberPad",
        6: "NumbersAndPunctuation",
        7: "PhonePad",
        8: "Twitter",
        9: "URL",
        10: "WebSearch"
    ]

    override func viewDidLoad(){
        super.viewDidLoad()
        pickerView.selectRow(8, inComponent: 0, animated: false)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return "\(indexesAndNames[row]!)"
    }

    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        self.textField.resignFirstResponder()
        self.textField.keyboardType = indexsForKeyboardTypes[row]!
        self.textField.becomeFirstResponder()
    }

    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return indexsForKeyboardTypes.count
    }

    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
}

