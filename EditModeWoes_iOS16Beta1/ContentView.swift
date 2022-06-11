//
//  ContentView.swift
//  EditModeWoes_iOS16Beta1
//
//  Created by Jason Ji on 6/11/22.
//

import SwiftUI

struct ContentView: View {
    @State var showing = false
    
    var body: some View {
        Button("Present") {
            showing.toggle()
        }
        .sheet(isPresented: $showing) {
            SheetView()
        }
    }
}

struct SheetView: View {
    @Environment(\.editMode) var editMode
    
    @State var items = [1, 2, 3, 4, 5]
    
    var body: some View {
        Form {
            Section {
                ForEach(items, id: \.self) { i in
                    Text("\(i)")
                }
                .onMove { _, _ in
                    
                }
            } header: {
                EditButton()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
