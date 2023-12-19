//
//  ContentView.swift
//  NavegacaoSwiftUITurma351BF
//
//  Created by Caio Fabrini on 14/12/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var isPresented = false
    @State var isPresentFullScreen = false
    
    var body: some View {
        VStack {
            Button("Apresentar Sheet") {
                isPresented.toggle()
            }
            Button("Apresentar Full Screen") {
                isPresentFullScreen.toggle()
            }
            .sheet(isPresented: $isPresented, content: {
                SheetView()
            })
            .fullScreenCover(isPresented: $isPresentFullScreen, content: {
                SheetView()
            })
        }
        .padding()
    }
}


struct SheetView: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack {
            Color.orange.ignoresSafeArea()
            VStack(spacing: 20) {
                Text("Deuuu boom")
                Button("Voltar") {
                   dismiss()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
