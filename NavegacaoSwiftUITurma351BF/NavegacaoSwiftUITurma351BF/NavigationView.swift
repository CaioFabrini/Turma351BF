//
//  Navigation.swift
//  NavegacaoSwiftUITurma351BF
//
//  Created by Caio Fabrini on 14/12/23.
//

import SwiftUI

/*
 MARK: NavigationView
 O NavigationView é um contêiner que fornece uma barra de navegação no topo da tela. Você pode adicionar visualizações dentro do NavigationView e usar NavigationLink para navegar entre elas.
 */

struct Navigation: View {
    var body: some View {
        NavigationView {
            NavigationLink("Ir para segunda tela") {
                Screen02()
            }
            .navigationTitle("Tela 01")
        }
    }
}

struct Screen02: View {
    
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
            .navigationTitle("Tela 02")
        }
    }
}

#Preview {
    Navigation()
}
