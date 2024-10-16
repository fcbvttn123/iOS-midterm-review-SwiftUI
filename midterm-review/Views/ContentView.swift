//
//  ContentView.swift
//  midterm-review
//
//  Created by Default User on 10/15/24.
//

import SwiftUI
import CoreData

struct ContentView: View {

    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: WebView(url: "https://google.ca")) {
                    Text("Web Screen")
                }
                NavigationLink(destination: List1View()) {
                    Text("List 1")
                }
                NavigationLink(destination: List1SectionView()) {
                    Text("List 1 with Section")
                }
                NavigationLink(destination: List2View()) {
                    Text("List 2")
                }
                NavigationLink(destination: List3View()) {
                    Text("List 3")
                }
                NavigationLink(destination: ExpandingListView()) {
                    Text("Expandable List")
                }
                NavigationLink(destination: SearchableListView()) {
                    Text("Searchable List")
                }
                NavigationLink(destination: MapView()) {
                    Text("Map")
                }
            }
        }
    }
}

#Preview {
    ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
}
