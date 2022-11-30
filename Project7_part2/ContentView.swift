//
//  ContentView.swift
//  Project7_part2
//
//  Created by K.Takahama on R 4/11/30.
//

import SwiftUI
//新しいビューを作成

struct ContentView: View {
    //1.ExpenseItem構造体ファイルを作成
    //2.Expenses classファイルを作成
    //3.クラスインスタンスを作成
    @StateObject var expenses = Expenses()
    //AddViewを表示させるState
    @State private var showingExpense = false
    
    var body: some View {
        NavigationView {
            List {
                //書き換えます
                ForEach(expenses.items) { item in
                    Text(item.name)
                }
                .onDelete(perform: removeItems)
            }
            .navigationTitle("iExpense")
            .toolbar {
                Button {
                    showingExpense = true
                } label: {
                    Image(systemName: "plus")
                }
            }
            .sheet(isPresented: $showingExpense) {
                AddView(expenses: expenses)
            }
        }
    }
    //削除関数
    func removeItems(at offsets: IndexSet) {
        expenses.items.remove(atOffsets: offsets)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
