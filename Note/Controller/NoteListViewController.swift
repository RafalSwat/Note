//
//  NoteListViewController.swift
//  Note
//
//  Created by Rafał Swat on 31/05/2019.
//  Copyright © 2019 Rafał Swat. All rights reserved.
//

import UIKit

class NoteListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var noteTextField: UITextField!
    @IBOutlet weak var addNoteButton: UIButton!
    @IBOutlet weak var noteTableView: UITableView!
    
    var notes: [Note] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        noteTableView.delegate = self
        noteTableView.dataSource = self

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return notes.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let note = notes[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "noteCell" ) as! NoteCell
        
        cell.setNote(note: note)
        
        return cell
        
        
    }
    
}
