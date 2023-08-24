//
//  TownRankingListView.swift
//  RankingPractice
//
//  Created by 澤木柊斗 on 2023/08/24.
//

import SwiftUI

struct TownRankingListView: View {
    let selection:TabType
    var body: some View {
        ScrollView{
            LazyVGrid(columns: [GridItem()], spacing:  0.0){
                ForEach(0 ..< 10){
                    index in 
                    TownRowView(selection: selection, rank: 1, isRankUp: true, rankFluctuation: 10)
                                                .padding(.bottom, 10.0)
                }
            }
            
            .padding(.all, 16.0) // sectionInset相当
        }
    }
}

struct TownRankingListView_Previews: PreviewProvider {
    static var previews: some View {
        TownRankingListView(selection:.rent)
    }
}
