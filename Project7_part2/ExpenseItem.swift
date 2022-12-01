//
//  ExpenseItem.swift
//  Project7_part2
//
//  Created by K.Takahama on R 4/11/30.
//

import Foundation

//この肩を一意に識別するためのプロトコル　Identifiable

struct ExpenseItem: Identifiable, Codable{
    //dataを識別するために、idを設定 自動でidを生成するためには・・
    var id = UUID()
    let name: String
    let type: String
    let amount: Double
}
