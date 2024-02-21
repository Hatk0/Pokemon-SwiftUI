import SwiftUI

struct PokemonCell: View {
    let pokemon: Model
    
    var body: some View {
        ZStack {
            VStack(alignment: .leading) {
                Text(pokemon.name)
                    .font(.headline)
                    .foregroundStyle(.white)
                    .padding(.top, 8)
                    .padding(.leading)
                
                HStack {
                    Text(pokemon.type)
                        .font(.subheadline)
                        .bold()
                        .foregroundStyle(.white)
                        .padding(.horizontal, 16)
                        .padding(.vertical, 8)
                        .overlay {
                            RoundedRectangle(cornerRadius: 20)
                                .fill(.white.opacity(0.25))
                        }
                        .frame(width: 100, height: 24)
                    
                    Image(pokemon.imageUrl)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 68, height: 68)
                        .padding([.bottom, .trailing], 4)
                }
            }
        }
        .background(.green)
        .clipShape(RoundedRectangle(cornerRadius: 12))
        .shadow(color: .green, radius: 5)
    }
}

#Preview {
    PokemonCell(pokemon: Model.pokemon[2])
}
