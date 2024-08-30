//
//----------------------------------------------
// Original project: PreviewUpdates
// by  Stewart Lynch on 2024-08-29
//
// Follow me on Mastodon: @StewartLynch@iosdev.space
// Follow me on Threads: @StewartLynch (https://www.threads.net)
// Follow me on X: https://x.com/StewartLynch
// Follow me on LinkedIn: https://linkedin.com/in/StewartLynch
// Subscribe on YouTube: https://youTube.com/@StewartLynch
// Buy me a ko-fi:  https://ko-fi.com/StewartLynch
//----------------------------------------------
// Copyright © 2024 CreaTECH Solutions. All rights reserved.

import SwiftUI

struct PersonView: View {
    let person: Person
    var body: some View {
        VStack {
            Text(person.firstName)
            Text(person.lastName)
        }
        .font(.title)
            .navigationTitle("\(person.firstName) \(person.lastName)")
            .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    PersonView(person: Person.people[0])
}
