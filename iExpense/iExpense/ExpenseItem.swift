//
//  ExpenseItem.swift
//  iExpense
//
//  Created by NGUYEN MINH DUC on 06/04/2022.
//

import Foundation

struct ExpenseItem: Identifiable, Codable {
    var id = UUID()
    let name: String
    let type: String
    let amount: Double
}
