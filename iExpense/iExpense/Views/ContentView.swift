//
//  ContentView.swift
//  iExpense
//
//  Created by NGUYEN MINH DUC on 05/04/2022.
//

import SwiftUI

struct ContentView: View {
    @StateObject var expenses = Expenses()
    @State private var showingAddView = false
    
    var body: some View {
        NavigationView {
            List {
                ForEach(expenses.items, id: \.id) { item in
                    HStack() {
                        VStack(alignment: .leading, spacing: 0) {
                            Text(item.name)
                            Text(item.amount, format: .currency(code: "USD"))
                                .font(.caption)
                        }
                        Spacer()
                        Text(item.type)
                            .font(.subheadline.bold())
                    }
                }
                .onDelete(perform: removeItem)
            }
            .navigationTitle("iExpense")
            .toolbar {
                Button {
                    //                    let expense = ExpenseItem(name: "Test Item", type: "Test", amount: 1)
                    //                    expenses.items.append(expense)
                    showingAddView = true
                } label: {
                    Image(systemName: "plus")
                }
                .sheet(isPresented: $showingAddView) {
                    AddView(expenses: expenses)
                }
            }
        }
    }
    
    func removeItem(at offsets: IndexSet) {
        expenses.items.remove(atOffsets: offsets)
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
