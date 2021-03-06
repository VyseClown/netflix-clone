//
//  CustomTabSwitcher.swift
//  netflix
//
//  Created by Alessandro Gentil on 13/05/21.
//

import SwiftUI

struct CustomTabSwitcher: View {
    
    var tabs: [CustomTab]
    
    func widthForTab(_ tab:CustomTab) -> CGFloat {
        let string = tab.rawValue
        return string.widthOfString(usingFont: .systemFont(ofSize:16,weight:.bold))
    }
    
    var body: some View {
        VStack {
            // Custom tab picker
            ScrollView(.horizontal,showsIndicators:false) {
                HStack {
                    ForEach(tabs, id: \.self) { tab in
                        VStack {
                            //  Red Bar
                            Rectangle()
                                .frame(width: widthForTab(tab), height: 6, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            
                            // Button
                            Button(action: {
                                // action
                            }, label: {
                                Text(tab.rawValue).font(.system(size:16, weight: .bold))
                            })
                            .buttonStyle(PlainButtonStyle())
                            
                        }
                    }
                }
            }
            
            // Selected View
            Text("SELECTED VIEW")
        }
        .foregroundColor(.white)
    }
}

enum CustomTab: String {
    case episodes = "EPISODES"
    case trailers = "TRAILERS & MORE"
    case more = "MORE LIKE THIS"
}

struct CustomTabSwitcher_Previews: PreviewProvider {
    static var previews: some View {
        ZStack{
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            CustomTabSwitcher(tabs: [.episodes, .trailers, .more])
        }
    }
}
