//
//  Expenses.swift
//  Project7_part2
//
//  Created by K.Takahama on R 4/11/30.
//

import Foundation

class Expenses: ObservableObject {
    @Published var items = [ExpenseItem]()
}

