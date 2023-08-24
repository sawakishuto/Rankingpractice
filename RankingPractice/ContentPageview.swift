//
//  ContentPageview.swift
//  RankingPractice
//
//  Created by 澤木柊斗 on 2023/08/24.
//

import SwiftUI

struct ContentPageview: View {
    @Binding var selection : TabType
    var body: some View {
        TabView(selection: $selection ){
        
                TownRankingListView(selection: selection).tag(TabType.rent)
           
            TownRankingListView(selection: selection).tag(TabType.buy)
            
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
        .animation(.linear(duration: 0.3))
        .edgesIgnoringSafeArea(.bottom)
        
    }
}

struct ContentPageview_Previews: PreviewProvider {
    static var previews: some View {
        ContentPageview(selection: .constant(.rent))
    }
}
