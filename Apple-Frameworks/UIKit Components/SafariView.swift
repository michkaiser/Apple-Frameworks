//
//  SafariView.swift
//  Apple-Frameworks
//
//  Created by Kaiser on 04/12/2023.
//

import SwiftUI
import SafariServices

struct SafariView : UIViewControllerRepresentable{
    
    let url: URL
    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) -> SFSafariViewController {
        SFSafariViewController(url: url)
    }
    
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SafariView>) {
        
    }
}
