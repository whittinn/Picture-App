//
//  ContentView.swift
//  Picture App
//
//  Created by Nathaniel Whittington on 7/31/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selectedLink : Int? = nil
    var body: some View {
        NavigationView{
            VStack(spacing: 5){
                NavigationLink("🖼Picture 1", destination: DetailView(selected: 1), tag: 1, selection: $selectedLink)
                NavigationLink("🖼Picture 2", destination: DetailView(selected: 2), tag: 2, selection: $selectedLink)
                NavigationLink("🖼Picture 3", destination: DetailView(selected: 3), tag: 3, selection: $selectedLink)
                Spacer()
            }.padding()
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0,  maxHeight: .infinity, alignment: .leading)
            .navigationBarTitle("Menu")
        }
    }
}


