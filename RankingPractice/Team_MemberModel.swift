//
//  Team_MemberModel.swift
//  RankingPractice
//
//  Created by 澤木柊斗 on 2023/08/26.
//

import Foundation
protocol nameandnumber{
    var name:String{get}
    var number:Int{get}
    
}

struct Team:Identifiable,Hashable,nameandnumber{
    let id = UUID()
    var name:String
    var number:Int
    init(name: String, number: Int) {
        self.name = name
        self.number = number
    }
  
    
}
struct Member:Identifiable,Hashable,nameandnumber{
    var id = UUID()
    var name:String
    var number: Int
    init( name: String, number: Int) {
    
        self.name = name
        self.number = number
    }
  
    
    
}


