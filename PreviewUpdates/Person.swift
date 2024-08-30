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

import Foundation

struct Person: Identifiable {
    var id = UUID()
    var firstName: String
    var lastName: String
    
    static var people: [Person] {
        [
            Person(firstName: "Stewart", lastName: "Lynch"),
            Person(firstName: "Mark", lastName: "Moeykens"),
            Person(firstName: "Jessie", lastName: "Linden"),
            Person(firstName: "Sean", lastName: "Allen"),
            Person(firstName: "Paul", lastName: "Hudson"),
            Person(firstName: "Mikaela", lastName: "Caron"),
            Person(firstName: "Sarah", lastName: "Reichelt"),
            Person(firstName: "Mohammad", lastName: "Azam"),
            Person(firstName: "Jordi", lastName: "Bruin"),
            Person(firstName: "Danijela", lastName: "Vrzan")
        ]
    }
}
