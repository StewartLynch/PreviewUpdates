//
//----------------------------------------------
// Original project: PreviewUpdates
// by  Stewart Lynch on 2024-08-30
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
import SwiftData

struct NavEmbedded: PreviewModifier {
    func body(content: Content, context: Void) -> some View {
        NavigationStack {
            content
        }
    }
}

extension PreviewTrait where T == Preview.ViewTraits {
    static var navEmbedded: Self = .modifier(NavEmbedded())
}

struct MockData: PreviewModifier {
    func body(content: Content, context: ModelContainer) -> some View {
        content
            .modelContainer(context)
    }
    
    static func makeSharedContext() async throws -> ModelContainer {
        let container = try! ModelContainer(
            for: Person.self,
            configurations: ModelConfiguration(isStoredInMemoryOnly: true)
        )
        container.mainContext.insert(Person(firstName: "Stewart", lastName: "Lynch"))
        container.mainContext.insert(Person(firstName: "Mark", lastName: "Moeykens"))
        container.mainContext.insert(Person(firstName: "Jessie", lastName: "Linden"))
        container.mainContext.insert(Person(firstName: "Sean", lastName: "Allen"))
        container.mainContext.insert(Person(firstName: "Paul", lastName: "Hudson"))
        container.mainContext.insert(Person(firstName: "Mikaela", lastName: "Caron"))
        container.mainContext.insert(Person(firstName: "Sarah", lastName: "Reichelt"))
        container.mainContext.insert(Person(firstName: "Mohammad", lastName: "Azam"))
        container.mainContext.insert(Person(firstName: "Jordi", lastName: "Bruin"))
        container.mainContext.insert(Person(firstName: "Danijela", lastName: "Vrzan"))

        return container
    }
}

extension PreviewTrait where T == Preview.ViewTraits {
    static var mockData: Self = .modifier(MockData())
}
