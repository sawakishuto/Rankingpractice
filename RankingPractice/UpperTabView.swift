//
//  UpperTabView.swift
//  RankingPractice
//
//  Created by 澤木柊斗 on 2023/08/24.
//

import SwiftUI

struct UpperTabView: View {
    @Binding var selection: TabType
    @State private var isrent :Bool = true
    let geometorySize: CGSize
    var body: some View {
        VStack(alignment: .leading, spacing: .zero){
            HStack(spacing: .zero){
                Button(action: {
                    self.isrent  = true
                    withAnimation(.linear(duration: 0.3)){
                        self.selection = .rent}
                }, label: {
                    Text("借りて住みたい")
                        .foregroundColor(self.selection == .rent ? .red:.gray)
                        .font(.headline)
                }).frame(width: geometorySize.width / 2 , height: 44.0 )
                Button(action:{self.isrent = false
                        withAnimation(.linear){self.selection = .buy}}, label: {
                    Text("買って住みたい").foregroundColor(selection == .rent ? .gray:.blue)
                        .font(.headline)
                    
                }).frame(width: geometorySize.width / 2, height: 44.0)
            }
            Rectangle().fill(self.selection == .rent ? Color.red:Color.blue)
                .frame(width: geometorySize.width / 2, height: 2.0 )
                .offset(x: self.selection == .rent ? .zero: geometorySize.width / 2 ,y: .zero)
        }
    }
}

struct UpperTabView_Previews: PreviewProvider {
    static var previews: some View {
        UpperTabView(selection:.constant(.rent) , geometorySize: UIScreen.main.bounds.size)
    }
}
