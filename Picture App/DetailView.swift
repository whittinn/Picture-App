//
//  DetailView.swift
//  Picture App
//
//  Created by Nathaniel Whittington on 7/31/21.
//

import SwiftUI

struct DetailView : View {
    @EnvironmentObject var appData : AppData
    var selected : Int
    
    var body: some View{
        NavigationView{
            VStack{
                HStack{
                    Text("rating:")
                    Slider(value: $appData.userData[selected].picture.rating, in: 0...10, step: 1.0)
                    Text("\(appData.userData[selected].rating)")
                        .fontWeight(.bold)
                        .foregroundColor(Color.orange)
                    Spacer()
                }.padding()
                
                Image(appData.userData[selected].picture.image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(minWidth: 0, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    .clipped()
                    
                
            }.padding()
            .background(Color( red: 0.95, green: 0.95, blue: 0.95))
            .navigationBarTitle("Picture", displayMode: .inline)
        }
    }
}

struct DetailView_Previews : PreviewProvider {
    static var previews: some View{
        NavigationView{
            DetailView(selected: 0).environmentObject(AppData())
        }
    }
}
