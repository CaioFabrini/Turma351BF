//
//  NotesDetailView.swift
//  NotasTurma351BF
//
//  Created by Caio Fabrini on 18/12/23.
//

import SwiftUI

struct NotesDetailView: View {
    
    @Binding var note: Note
    @State var noteState: Note
    @State var disabled: Bool = true
    @Environment(\.dismiss) var dismiss
    
    init(note: Binding<Note>) {
        _note = note
        _noteState = State(initialValue: note.wrappedValue)
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            TextField("Título", text: $noteState.title)
                .font(.title)
            TextEditor(text: $noteState.content)
                .font(.subheadline)
        }
        .padding()
        .navigationTitle("Detalhes")
        .toolbar(content: {
            ToolbarItem(placement: .topBarTrailing) {
                Button("Salvar") {
                    note = noteState
                    dismiss()
                }
                .disabled(note == noteState)
            }
        })
    }
    
}

#Preview {
    return NavigationStack {
        @State var note = Note(title: "Olá mundoooo", content: "Esse é o detalhe do mundo!!")
        NotesDetailView(note: $note)
    }
}
