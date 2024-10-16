import SwiftUI

struct University: Identifiable {
    var id = UUID()
    var name: String?
    var logo: String?
    var departmentName: String?
    var courses : [String]?
    var departments: [University]?
}

struct ExpandingListView: View {
    let universities: [University] = [
        // University 1
        University(
            name: "Harvard University",
            logo: "barca",
            departments: [
                University(name: "Computer Science", logo: "", courses: ["Algorithms", "Data Structures", "Machine Learning"]),
                University(name: "Economics", logo: "", courses: ["Microeconomics", "Macroeconomics", "Econometrics"]),
            ]
        ),
        
        // University 2
        University(
            name: "Stanford University",
            logo: "varid",
            departments: [
                University(name: "Computer Science", logo: "", courses: ["Operating Systems", "Computer Networks", "Artificial Intelligence"]),
                University(name: "Business", logo: "", courses: ["Corporate Finance", "Entrepreneurship", "Marketing"])
            ]
        ),
    ]
    var body: some View {
        List(universities, children: \.departments) { university in
            Image(university.logo!)
            Text(university.name!)
                .font(.headline)
                .foregroundColor(.black)
        }
    }
}

#Preview {
    ExpandingListView()
}
