//
//  ContentView.swift
//  Dinausaure
//
//  Created by Julien Juret on 29/06/2023.
//

import SwiftUI

struct ContentView: View {
    @State var state: String = "Run";
    @State var step: Int = 1;
    
    func toggleState(target: String) {
        if (state == target){
            togglestep()
        } else {
            state = target;
        }
    }
    
    func togglestep() {
        step += 1;
        if (step > 8 && state != "Jump" || step > 12){
            step = 1;
        }
    }
    
    var body: some View {
        VStack {
            Text("Dinosaure")
            DinoDisplay(state: $state, step: $step)
            Spacer()
            HStack(spacing: 50) {
                Button(state == "Run" ? "Play" : "Cours", action: {
                    toggleState(target: "Run")
                })
                    .buttonStyle(.borderedProminent)
                Button(state == "Jump" ? "Play" : "Saute") {
                    toggleState(target: "Jump")
                }
                .buttonStyle(.borderedProminent)
                Button(state == "Dead" ? "Play" : "Mort", action: {
                    toggleState(target: "Dead")
                })
                    .buttonStyle(.borderedProminent)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
