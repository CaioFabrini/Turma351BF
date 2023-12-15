//
//  ContentView.swift
//  PrimeiroAppSwiftUITurma351BF
//
//  Created by Caio Fabrini on 12/12/23.
//

import SwiftUI

//        VStack (Vertical Stack):
//        O VStack é um layout que empilha as visualizações verticalmente, uma em cima da outra.

//        HStack (Horizontal Stack):
//        O HStack é semelhante ao VStack, mas coloca as visualizações uma ao lado da outra, horizontalmente. É útil para criar linhas de elementos, como ícones ou campos de entrada.

//        ZStack (Z-Index Stack):
//        O ZStack empilha as visualizações uma em cima da outra em um plano 3D. A visualização mais próxima do topo será a mais visível. Isso é útil para criar sobreposições, como elementos flutuantes.

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.orange
            VStack(alignment: .center, spacing: 10.0) {
                
                HStack(alignment: .center) {
                    Text("Caio")
                        .background(Color.red)
                    
                    Text("Fabrini")
                        .background(Color.yellow)
                }
                
                Text("21 anos")
                    .background(Color.blue)
            }
            .padding()
            .background(Color.black)
        }
        .ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}
