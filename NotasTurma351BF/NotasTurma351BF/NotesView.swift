//
//  ContentView.swift
//  NotasTurma351BF
//
//  Created by Caio Fabrini on 18/12/23.
//

import SwiftUI

struct NotesView: View {
    
    @State var viewModel = NotesViewModel()
    @State var isGoAddNote: Bool = false
    
    var body: some View {
        NavigationStack {
            List($viewModel.notes, editActions: .all) { $note in
                NavigationLink {
                    NotesDetailView(note: $note)
                } label: {
                    HStack {
                        Image(systemName: "pencil")
                            .frame(width: 24, height: 24)
                        VStack(alignment: .leading) {
                            Text(note.title)
                                .font(.headline)
                            Text(note.content)
                                .font(.subheadline)
                        }
                    }
                }
            }
            .navigationTitle("Notas")
            .toolbar(content: {
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Adicionar") {
                        isGoAddNote.toggle()
                    }
                }
            })
            .sheet(isPresented: $isGoAddNote, content: {
                AddNoteView(viewModel: viewModel)
            })
        }
    }
}

#Preview {
    NotesView()
}
