//
//  HeaderView.swift
//  InstaClone
//
//  Created by Esteban on 16/08/2021.
//

import SwiftUI
import Kingfisher

struct HeaderView: View {
    
    let postCount: Int
    let followers: Int
    
    var body: some View {
        VStack(alignment: .leading, spacing:0, content: {
            HStack(alignment: .center,spacing: 30, content: {
                ZStack {
                    Circle()
                        .stroke(Color.gray.opacity(0.5), lineWidth: 3)
                        
                    KFImage(URL(string: "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"))
                        .resizable()
                        .aspectRatio(contentMode:.fill)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        .padding(5)
                }
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, content: {
                    Text(String(postCount)).bold()
                    Text("Posts")
                })
                VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, content: {
                    Text(String(followers)).bold()
                    Text("Followers")
                })
                VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, content: {
                    Text("9999").bold()
                    Text("Followings")
                })
                
            })
            VStack(alignment: .leading, content: {
                Text("Quentin").bold()
                Text("Entrepreneur").foregroundColor(.gray)
                Text("Apprends à coder et deviens libre  ")
                Text("Développeur iOS")
                Text("Formateur et Youtubeur +80k ...")
                Link("https://www.google.com", destination: URL(string:  "https://www.google.com")!)
                
            })
        })
        .padding(10)
        }
    }

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(postCount: 78, followers: 4672)
            .previewLayout(.sizeThatFits)
    }
}
