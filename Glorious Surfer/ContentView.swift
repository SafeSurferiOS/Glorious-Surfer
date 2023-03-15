//
//  ContentView.swift
//  Glorious Surfer
//
//  Created by Brian Seo on 2023-03-14.
//

import SwiftUI
import FamilyControls

struct ContentView: View {
    @State private var showDiscouragedAppsPicker = false
    @State private var showEncouragedAppsPicker = false
    
    @EnvironmentObject var model: Model
    
    var body: some View {
        VStack(spacing: 20.0) {
            Button("Select Apps to Discourage") {
                showDiscouragedAppsPicker = true
            }
            .familyActivityPicker(isPresented: $showDiscouragedAppsPicker, selection: $model.selectionToDiscourage)
            
            Button("Select Apps to Encourage") {
                showEncouragedAppsPicker = true
            }
            .familyActivityPicker(isPresented: $showEncouragedAppsPicker, selection: $model.selectionToEncourage)
        }
        .onChange(of: model.selectionToDiscourage) { newValue in
            model.setShieldRestrictions()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Model.shared)
    }
}
