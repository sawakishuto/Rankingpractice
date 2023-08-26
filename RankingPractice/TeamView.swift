//
//  TeamView.swift
//  RankingPractice
//
//  Created by 澤木柊斗 on 2023/08/26.
//

import SwiftUI

struct TeamView: View {
    let team:Team
   
    var body: some View {
        Text(team.name)
    }
}

struct TeamView_Previews: PreviewProvider {
    static var previews: some View {
        TeamView(team: Team(name: "name", number: 1))
    }
}
