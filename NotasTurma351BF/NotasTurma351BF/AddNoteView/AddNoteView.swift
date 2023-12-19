//
//  AddNoteView.swift
//  NotasTurma351BF
//
//  Created by Caio Fabrini on 18/12/23.
//

import SwiftUI


// classe ->  @Bindable
// objeto -> @Binding

struct AddNoteView: View {
    
    @Bindable var viewModel: NotesViewModel
    @State var note = Note()
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        Form {
            Section {
                TextField("Informe o Título", text: $note.title)
            } header: {
                Text("Título")
            }
            
            Section {
                TextEditor(text: $note.content)
            } header: {
                Text("Conteúdo")
            }
            
            Section {
                Button("Salvar") {
                    viewModel.notes.append(note)
                    dismiss()
                }
            }
        }
    }
}

#Preview {
    let viewModel = NotesViewModel()
    return AddNoteView(viewModel: viewModel)
}
