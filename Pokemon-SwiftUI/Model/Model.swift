import Foundation

struct Model: Decodable, Identifiable {
    let id: Int
    let name: String
    let imageUrl: String
    let type: String
}

extension Model {
    static let pokemon = [
        Model(id: 0, name: "Bulbasaur", imageUrl: "bulbasaur", type: "poison"),
        Model(id: 1, name: "Ivysaur", imageUrl: "bulbasaur", type: "poison"),
        Model(id: 2, name: "Venusaur", imageUrl: "bulbasaur", type: "poison"),
        Model(id: 3, name: "Charmander", imageUrl: "bulbasaur", type: "fire"),
        Model(id: 4, name: "Charmeleon", imageUrl: "bulbasaur", type: "fire"),
        Model(id: 5, name: "Charizard", imageUrl: "bulbasaur", type: "fire")
    ]
}
