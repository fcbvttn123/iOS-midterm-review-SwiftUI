//
//  List3View.swift
//  midterm-review
//
//  Created by Default User on 10/15/24.
//

import SwiftUI

struct DataStructure : Identifiable {
    var id = UUID()
    var name : String
    var website : String
    var logo : String
}

struct CustomRow : View {
    var dataObj : DataStructure
    var body: some View {
        HStack(spacing: 15) {
           Image(dataObj.logo)
               .resizable()
               .frame(width: 50, height: 50)
           VStack(alignment: .leading, spacing: 5) {
               Text(dataObj.name)
                   .font(.headline)
                   .fontWeight(.bold)
               Text(dataObj.website)
                   .font(.subheadline)
                   .foregroundColor(.blue)
           }
       }
    }
}

struct List3View: View {
    let arr : [DataStructure] = [
        DataStructure(name: "Barcelona", website: "https://www.fcbarcelona.com", logo: "barca"),
        DataStructure(name: "Varid", website: "https://www.realmadrid.com", logo: "varid"),
        DataStructure(name: "AC Milan", website: "https://www.acmilan.com", logo: "acmilan"),
    ]
    var body: some View {
        /*
        List(arr) { item in
            CustomRow(dataObj: item)
        }
        */
        NavigationView {
            List(arr) { item in
                NavigationLink(destination: WebView(url: item.website)) {
                    CustomRow(dataObj: item)
                }
            }
        }
    }
}

#Preview {
    List3View()
}
