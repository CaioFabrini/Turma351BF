//
//  NavigationStack.swift
//  NavegacaoSwiftUITurma351BF
//
//  Created by Caio Fabrini on 14/12/23.
//

import SwiftUI

// A navegação em versões anteriores do iOS era gerenciada através do componente NavigationView. No entanto, a partir do iOS 16, este componente foi descontinuado e substituído por dois novos contêineres: NavigationStack e NavigationSplitView, cada um oferecendo funcionalidades aprimoradas.

// O NavigationStack serve para gerir sequências lineares de visualizações, empilhando cada nova tela sobre a anterior. Este contêiner sempre mantém uma tela na posição mais elevada da pilha, facilitando a navegação direta de uma tela para outra.


struct NavigationStackScreen: View {
    
    @State var isPresented = false
    
    
    var body: some View {
//        NavigationStack {
//            NavigationLink("Ir para segunda tela") {
//                Screen02()
//            }
//            .navigationTitle("Tela 01")
//        }
        
        NavigationStack {
            NavigationLink(value: Color.red, label: {
               Image(systemName: "trash")
            })
            NavigationLink(value: Color.blue, label: {
               Image(systemName: "person.circle")
            })
            NavigationLink(value: "Olá mundo 2", label: {
               Image(systemName: "pencil")
            })
            NavigationLink(value: 5000, label: {
               Image(systemName: "star")
            })
            NavigationLink(value: true, label: {
               Image(systemName: "person")
            })
            NavigationLink("Ir para segunda tela") {
                Screen02()
            }
            NavigationLink(value: Detail(name: "Caio", color: .blue), label: {
               Image(systemName: "person")
            })
            Button("Clique aquiiii botão", action: {
                isPresented.toggle()
            })
            
            .navigationDestination(for: Color.self, destination: { color in
                ZStack {
                 color
                }
            })
            .navigationDestination(for: String.self, destination: { text in
                Text(text)
            })
            .navigationDestination(for: Int.self, destination: { value in
                Text(String(value))
            })
            .navigationDestination(for: Detail.self, destination: { detail in
                DetailView(model: detail)
            })
            .navigationDestination(isPresented: $isPresented, destination: {
                Text("Sou a tela do botão")
            })
            .navigationTitle("Tela 01")
        }
    }
}

struct Detail: Hashable {
    var name: String
    var color: Color
}

struct DetailView: View {
    
    var model: Detail
    
    var body: some View {
        ZStack {
            model.color
            Text(model.name)
        }
    }
}

#Preview {
    NavigationStackScreen()
}
