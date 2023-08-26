//
//  Navigationstack.swift
//  RankingPractice
//
//  Created by 澤木柊斗 on 2023/08/26.
//

import SwiftUI


struct Navigationstack: View {
    let animals = ["🐱", "🐶", "🐥"]

    @State private var path = [String]()

    var body: some View {
        NavigationStack(path: $path) {
            List {
                ForEach(animals, id: \.self) { animal in
                    Button {
                        let name = ["🐱": "ねこ", "🐶": "いぬ","🐥":"ひよこ"]
                            guard let name = name[animal] else {
                                return
                            }
                            path.append(name)
                        
                    } label: {
                        Text(animal)
                    }
                }
            }
            .navigationDestination(for: String.self) { name in
                VStack{
                    Text(name)
                    List {
                        ForEach(animals, id: \.self) { animal in
                            Button {
                                let name = ["🐱": "ねこ", "🐶": "いぬ","🐥":"ひよこ"]
                                    guard let name = name[animal] else {
                                        return
                                    }
                                    path.append(name)
                                
                            } label: {
                                Text(animal)
                            }
                        }
                    }
                    Button(action: {self.path.removeLast()}, label: {Text("削除")})
                    Button(action: {self.path.removeAll()}, label: {Text("はじめのページへ")})
                }
            }
        }
    }
}
struct Navigationstack_Previews: PreviewProvider {
    static var previews: some View {
        Navigationstack()
    }
}

