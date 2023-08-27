//
//  Navigationstack.swift
//  RankingPractice
//
//  Created by 澤木柊斗 on 2023/08/26.
//

import SwiftUI


struct Navigationstack: View {
    @State var animals = ["🐱", "🐶", "🐥"]
    @State  var name:[String:String] = ["🐱": "ねこ", "🐶": "いぬ","🐥":"ひよこ"]

    @State private var path = [String]()

    var body: some View {
        NavigationStack(path: $path) {
            List {
                ForEach(animals, id: \.self) { animal in
                    NavigationLink(value: animal, label: {Text(animal)})
                }
            }
            .navigationDestination(for: String.self) { name in
                AnimalView(path:$path, name: name)
            }
        }.onAppear{
            ShowFirstPage()
        }
    }
    


    func ShowFirstPage(){
        path = ["🐱","🐥"]
    }
}
struct Navigationstack_Previews: PreviewProvider {
    static var previews: some View {
        Navigationstack()
    }
}

