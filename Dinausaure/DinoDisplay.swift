//
//  DinoDisplay.swift
//  Dinausaure
//
//  Created by Julien Juret on 29/06/2023.
//

import SwiftUI

struct DinoDisplay: View {
    @Binding var state: String;
    @Binding var step: Int;
    
    var body: some View {
        Image("\(self.state) (\(self.step))")
            .resizable()
            .scaledToFit()
            .imageScale(.large)
            .foregroundStyle(.tint)
    }
}

#Preview {
    @State var state: String = "Run";
    @State var step: Int = 1;
    return DinoDisplay(state: $state, step: $step)
}
