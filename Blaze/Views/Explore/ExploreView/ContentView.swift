//
//  ContentView.swift
//  Blaze
//
//  Created by S on 18/11/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var input1: String = ""
    @State var errorMessage1 = "Error"
    @State var showError1 = false
    
    @State var input2: String = ""
    @State var errorMessage2 = "Error"
    @State var showError2 = false
    
    @State var input3: String = ""
    @State var errorMessage3 = "Error"
    @State var showError3 = false
    
    @EnvironmentObject var appState: AppState
    
    var body: some View {
        NavigationStack {
            ScrollView {
                CustomTextFieldVerboseErrorView(prompt: "Cardholder name", input: self.$input1, textError: self.$errorMessage1, showError: self.$showError1)
                    .modifier(BottomPaddingTextField())
                
                CustomTextFieldVerboseErrorView(prompt: "Card number", input: self.$input1, textError: self.$errorMessage1, showError: self.$showError1)
                    .modifier(BottomPaddingTextField())
                
                
                HStack(alignment: .top) {
                    CustomTextFieldVerboseErrorView(prompt: "Exp. date", input: self.$input2, textError: self.$errorMessage2, showError: self.$showError2)
                    
                    Spacer()
                    Spacer()
                    
                    CustomTextFieldVerboseErrorView(prompt: "CVV", input: self.$input3, textError: self.$errorMessage3, showError: self.$showError3)
                }
                .modifier(BottomPaddingTextField())
                            
                CustomDescriptiveTextFieldVerboseErrorView(prompt: "Nickname (optional)", description: "Using a nickname can help you to identify the card more easily", input: self.$input1, textError: self.$errorMessage1, showError: self.$showError1)
                    .modifier(BottomPaddingTextField())
                
                
                Button("QUACK1") {
                    self.showError1.toggle()
                }
                
                Spacer()
                
                Button("QUACK1") {
                    self.showError2.toggle()
                }
                
                Spacer()
                
                Button("QUACK1") {
                    self.showError3.toggle()
                }
                
                Spacer()
            }
            .padding(.horizontal)
        }
        .onAppear {
            // To prevent weird animation behaviour
            DispatchQueue.main.async {
                withAnimation {
                    self.appState.showTabBar = false
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
