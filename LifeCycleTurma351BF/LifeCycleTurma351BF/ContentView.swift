//
//  ContentView.swift
//  LifeCycleTurma351BF
//
//  Created by Caio Fabrini on 14/12/23.
//

import SwiftUI

struct ContentView: View {
    
    // primeiro a ser disparado
    init() {
       print("fui instanciado")
    }
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            // este metodo é disparado quando exibi a tela
                .onAppear(perform: {
                    print("O texto apareceu")
                })
            // este metodo é disparado quando deixa de exibir a tela(desaparece)
                .onDisappear(perform: {
                    print("O texto desapareceu")
                })
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
