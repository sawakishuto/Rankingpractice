//
//  MemberView.swift
//  RankingPractice
//
//  Created by 澤木柊斗 on 2023/08/26.
//

import SwiftUI

struct MemberView: View {
    let member:Member
    var body: some View {
        Text(member.name)
    }
}

struct MemberView_Previews: PreviewProvider {
    static var previews: some View {
        MemberView(member: Member(name: "sawaki", number: 1))
    }
}
