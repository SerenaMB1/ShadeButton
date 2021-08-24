//
//  EntryViewController.swift
//  Shade
//
//  Created by Serena Badesha on 23/08/2021.
//

import UIKit

class EntryViewController: UIViewController, UITextViewDelegate {
    @IBOutlet weak var bottomConstaint: NSLayoutConstraint!
    @IBOutlet weak var entryTextView: UITextView!
    @IBOutlet weak var datePicker: UIDatePicker!
    
    @IBOutlet weak var deleteTapped: UIBarButtonItem!
    
    var entry: Entry?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        NotificationCenter.default.addObserver(self, selector: #selector (keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        
        if entry == nil {
            if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
                entry = Entry(context: context)
                entry?.date = datePicker.date
                entry?.text = "Today was..."
                entryTextView.becomeFirstResponder()
            }
        }
            entryTextView.text = entry?.text
            if let dateToBeShown = entry?.date {
                datePicker.date = dateToBeShown
            }
            entryTextView.delegate = self
            
        }
   

    override func viewWillDisappear(_ animated: Bool) {
        //Make an Entry
        (UIApplication.shared.delegate as? AppDelegate)?.saveContext()

}
    @objc func keyboardWillShow(notification: NSNotification) {
        if let keyboardFrame: NSValue = notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue {
            let keyboardRectangle = keyboardFrame.cgRectValue
            let keyboardHeight = keyboardRectangle.height
            
            bottomConstaint.constant = keyboardHeight
        }
        
    }
    @IBAction func deleteTapped(_ sender: Any) {
        if entry != nil {
            if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
                context.delete(entry!)
                try? context.save()
            }
        }
        navigationController?.popViewController(animated: true)
    }
    func textViewDidChange(_ textView: UITextView) {
        entry?.text = entryTextView.text
        (UIApplication.shared.delegate as? AppDelegate)?.saveContext()
    }
    @IBAction func datePickerChanged(_ sender: Any) {
        entry?.date = datePicker.date
        (UIApplication.shared.delegate as? AppDelegate)?.saveContext()
        
    }
}
