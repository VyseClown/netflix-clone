//
//  TopMoviePreview.swift
//  netflix
//
//  Created by Alessandro Gentil on 24/04/21.
//

import SwiftUI
import Kingfisher

struct TopMoviePreview: View {
    var movie: Movie
    
    func isNotLastCategory (_ cat: String) -> Bool {
        let catCount = movie.categories.count // 4
        
        if let index = movie.categories.firstIndex(of: cat){
            if index + 1 != catCount{
                return true
            }
        }
        
        return false
    }
    
    var body: some View {
        ZStack {
            KFImage(movie.thumbnailURL).resizable().scaledToFill().clipped()
            
            VStack {
                Spacer()
                HStack{
                    ForEach(movie.categories, id: \.self) { category in
                        HStack {
                            Text(category).font(.footnote)
                            
                            if isNotLastCategory(category){
                                Image(systemName:"circle.fill")
                                    .foregroundColor(.blue)
                                    .font(.system(size: 3))}
                        }
                    }
                }
                HStack{
                    Spacer()
                    
                    SmallVerticalButton(text: "My List", isOnImage: "checkmark", isOffImage: "plus", isOn: true){
                        //
                    }
                    
                    Spacer()
                    
                    WhiteButton(text: "Play", imageName: "play.fill"){
                    //
                    }
                    .frame(width:120)
                    
                    Spacer()
                    
                    SmallVerticalButton(text: "Info", isOnImage: "info.circle", isOffImage: "info.circle", isOn: true){
                        //
                    }
                    
                    Spacer()
                }
            }
        }
        .foregroundColor(.white)
    }
}

struct TopMoviePreview_Previews: PreviewProvider {
    static var previews: some View {
        TopMoviePreview(movie:exampleMovie2)
    }
}
