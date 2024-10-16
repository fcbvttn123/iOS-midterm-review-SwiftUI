//
//  SearchableListView.swift
//  midterm-review
//
//  Created by Default User on 10/16/24.
//

import SwiftUI

struct ZTeam: Identifiable {
    var id = UUID()
    var name: String
    var website: String
    var logo: String
}

struct ZTeamRow: View {
    var team: ZTeam
    var body: some View {
        HStack {
            Image(team.logo)
                .renderingMode(.original)
                .frame(width: 45, height: 45, alignment: .center)
                .padding(20)
            VStack() {
                Text(team.name)
                    .font(.headline)
                    .foregroundColor(.black)
                    .multilineTextAlignment(.leading)
                    .frame(width: 300, height: 30, alignment: .leading)
                Text(team.website)
                    .font(.subheadline)
                    .foregroundColor(.blue)
                    .frame(width: 300, height: 30, alignment: .leading)
            }
        }
        .navigationBarTitle("Toronto Sports")
    }
}

struct SearchableListView: View {
    
    let teams : [ZTeam] = [
        ZTeam(name: "Jays", website: "http://www.bluejays.com", logo: "barca"),
        ZTeam(name: "Leafs", website: "http://www.torontomapleleafs.com", logo: "acmilan"),
        ZTeam(name: "Raptors", website: "http://www.torontoraptors.com", logo: "varid"),
    ]
    @State private var searchText = ""
    
    var searchResults : [ZTeam] {
        if searchText.isEmpty {
            return teams
        } else {
            return teams.filter { $0.name.contains(searchText) }
        }
    }
    
    var body: some View {
        List(searchResults) { t in
            ZTeamRow(team: t)
            // Swiping
            .swipeActions(edge: .trailing) {
                Button {
                    print("Mark as favorite")
                } label: {
                    Label("Favorite", systemImage: "star")
                }.tint(.yellow)
                Button {
                    print("Delete")
                } label: {
                    Label("Delete", systemImage: "trash")
                }.tint(.red)
            }
            .swipeActions(edge: .leading) {
                Button {
                    print("Share")
                } label: {
                    Label("Share", systemImage: "square.and.arrow.up")
                }.tint(.green)
            }
        }
        //Search
        .searchable(text: $searchText, prompt:"Search for a team").navigationTitle("Searchable")
    }
}

#Preview {
    SearchableListView()
}
