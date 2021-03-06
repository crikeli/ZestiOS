//
//  DateEntryTextField.swift
//  MoltinSwiftExample
//
//  Created by Kelin Christi on 26/01/2016.
//  Copyright (c) 2016 Kelz All rights reserved.
//

import UIKit

class DataEntryTextField: UITextField {

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */
    
    func setDoneInputAccessoryView() {
        let toolbar = UIToolbar(frame: CGRectMake(0, 0, self.frame.size.width, 44))
        
        let space = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.FlexibleSpace, target: self, action: nil)
        
        let doneButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.Done, target: self, action: #selector(DataEntryTextField.btnDoneTap(_:)))

        
        toolbar.setItems([space, doneButton], animated: true)
        
        self.inputAccessoryView = toolbar
        
    }
    
    func btnDoneTap(sender: AnyObject) {
        resignFirstResponder()
    }

}
