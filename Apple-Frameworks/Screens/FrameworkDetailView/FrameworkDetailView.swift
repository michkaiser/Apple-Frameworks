//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Kaiser on 21/11/2023.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    
    @State private var isShowingSafariView = false
    
    var framework: Framework
    
    var body: some View {
        VStack{
            FrameworkTitleView(framework: framework)
            
            Text(framework.description)
                .font(.body)
                .padding()
            Spacer()
            
            Button{
                isShowingSafariView = true
            } label: {
              //  AFButton(title: "Learn More")
                
                Label("Learn More", systemImage: "book.fill")
            }
            .buttonStyle(.bordered)
            .foregroundColor(.yellow)
//            .controlSize(.large)
//            .buttonBorderShape(.roundedRectangle(radius: 20))
            .tint(.red)
        }
        .sheet(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
        })
    }
}

struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(framework: MockData.sampleFramework)
            .preferredColorScheme(.dark)
    }
}
