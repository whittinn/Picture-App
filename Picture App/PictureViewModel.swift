//
//  PictureViewModel.swift
//  Picture App
//
//  Created by Nathaniel Whittington on 7/31/21.
//

import SwiftUI

struct Picture {
    var image : String
    var rating : Double
}

struct PictureViewModel {
    var picture : Picture
    var rating : Int{
        return Int(picture.rating)
    }
}
//created an OO to store the data and provide its view and a custom init to fill array with inital data.
class AppData: ObservableObject {
    
   @Published var userData : [PictureViewModel]
    
    init() {
        userData = [PictureViewModel(picture: Picture(image: "nopicture", rating: 0)),PictureViewModel(picture: Picture(image: "spot1", rating: 0)),
        PictureViewModel(picture: Picture(image: "spot2", rating: 0)),PictureViewModel(picture: Picture(image: "spot3", rating: 0))]
    }
    
}
