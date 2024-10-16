//
//  List2View.swift
//  midterm-review
//
//  Created by Default User on 10/15/24.
//

import SwiftUI

struct List2View: View {
    let arr1: [String] = ["Item 1 Arr 1", "Item 2 Arr 1", "Item 3 Arr 1"]
    let arr2: [String] = ["Item 1 Arr 2", "Item 2 Arr 2", "Item 3 Arr 2"]
    var body: some View {
        List {
            Section(header: Text("Section 1"), footer: Text("End of Section 1")) {
                ForEach(arr1, id: \.self) { t in
                   Text(t)
                }
            }
            Section(header: Text("Section 2"), footer: Text("End of Section 2")) {
                ForEach(arr2, id: \.self) { t in
                   Text(t)
                }
            }
        }.navigationBarTitle("List Title")
    }
}

#Preview {
    List2View()
}
