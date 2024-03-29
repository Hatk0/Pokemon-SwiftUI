import SwiftUI

struct PokemonView: View {
    private let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 15) {
                    ForEach(0..<150) { _ in
                        PokemonCell(pokemon: Model.pokemon[2])
                    }
                }
            }
            .navigationTitle("Pokemon")
        }
    }
}

#Preview {
    PokemonView()
}
