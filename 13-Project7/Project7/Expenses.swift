//
//  Expenses.swift
//  Project7
//
//  Created by clarknt on 2019-10-30.
//  Copyright © 2019 clarknt. All rights reserved.
//

import Foundation

class Expenses: ObservableObject {
    @Published var items = [ExpenseItem]()
}

