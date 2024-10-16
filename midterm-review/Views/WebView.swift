//
//  WebView.swift
//  midterm-review
//
//  Created by Default User on 10/15/24.
//

import SwiftUI
import WebKit

struct WebViewSetup : UIViewRepresentable {
    let url : URL
    func makeUIView(context: UIViewRepresentableContext<WebViewSetup>) -> WKWebView {
        let webview = WKWebView()
        let urlRequest = URLRequest(url: self.url)
        webview.load(urlRequest)
        return webview
    }
    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<WebViewSetup>) {
        let urlRequest = URLRequest(url: self.url)
        uiView.load(urlRequest)
    }
}

struct WebView: View {
    let url : String
    var body: some View {
        WebViewSetup(url: URL(string: url)!)
    }
}

#Preview {
    WebView(url: "https://google.ca")
}
