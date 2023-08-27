//
//  AnimalView.swift
//  RankingPractice
//
//  Created by 澤木柊斗 on 2023/08/27.
//

import SwiftUI

struct AnimalView: View {
    @Binding var path:[String]
    let name:String
    var body: some View {
        VStack{
            Text(name)
            Button(action: {self.path.removeLast()}, label: {Text("削除")})
            Button(action: {self.path.removeAll()}, label: {Text("はじめのページへ")})
        }
        
    }
}

struct AnimalView_Previews: PreviewProvider {
    static var previews: some View {
        AnimalView(path: .constant(["🐱"]), name: "")
    }
}
