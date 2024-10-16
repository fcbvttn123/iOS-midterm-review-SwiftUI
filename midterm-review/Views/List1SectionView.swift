//
//  List1SectionView.swift
//  midterm-review
//
//  Created by Default User on 10/15/24.
//

import SwiftUI

struct List1SectionView: View {
    var body: some View {
        List {
            Section(header: Text("Section 1"), footer: Text("End of Section 1")) {
                Text("Row 1")
                Text("Row 2")
                Text("Row 3")
                Text("Row 4")
            }
            Section(header: Text("Section 2"), footer: Text("End of Section 2")) {
                Text("Row 1")
                Text("Row 2")
                Text("Row 3")
                Text("Row 4")
            }
        }.navigationBarTitle("Grouped List")
    }
}

#Preview {
    List1SectionView()
}
