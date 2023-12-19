//
//  NotesViewModel.swift
//  NotasTurma351BF
//
//  Created by Caio Fabrini on 18/12/23.
//

import UIKit

@Observable
class NotesViewModel {
    
    var notes: [Note] = [] {
        didSet {
            saveNotes()
        }
    }
    
    init() {
        guard let data = UserDefaults.standard.data(forKey: "notes") else { return }
        if let getNotes = try? JSONDecoder().decode([Note].self, from: data) {
            notes = getNotes
        }
    }
    
    func saveNotes() {
        if let encoded = try? JSONEncoder().encode(notes) {
            UserDefaults.standard.setValue(encoded, forKey: "notes")
        }
    }

}



