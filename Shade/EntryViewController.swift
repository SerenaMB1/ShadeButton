//
//  EntryViewController.swift
//  Shade
//
//  Created by Serena Badesha on 23/08/2021.
//

import UIKit

class EntryViewController: UIViewController {
    @IBOutlet weak var entryTextView: UITextView!
    @IBOutlet weak var datePicker: UIDatePicker!
    
    @IBOutlet weak var deleteTapped: UIBarButtonItem!
    
    var entry: Entry?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if entry == nil {
            //create
        } else{
            
            entryTextView.text = entry!.text
            
            if let dateToBeShown = entry!.date {
                datePicker.date = dateToBeShown
            }
            
        }
    }
    

    override func viewWillDisappear(_ animated: Bool) {
        //Make an Entry
        
        if entry == nil {
            if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
                let entry = Entry(context: context)
                entry.date = datePicker.date
                entry.text = entryTextView.text
                
            }
        
            
        }
        (UIApplication.shared.delegate as? AppDelegate)?.saveContext()

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
    
}
