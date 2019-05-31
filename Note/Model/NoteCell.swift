//
//  NoteCell.swift
//  Note
//
//  Created by Rafał Swat on 31/05/2019.
//  Copyright © 2019 Rafał Swat. All rights reserved.
//

import UIKit

class NoteCell: UITableViewCell {

    @IBOutlet weak var noteTextField: UILabel!
    @IBOutlet weak var dateTextField: UILabel!
    
    func setNote(note: Note) {
        noteTextField.text = note.note
        dateTextField.text = note.date
    }

}
