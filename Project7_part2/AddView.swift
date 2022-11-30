//
//  AddView.swift
//  Project7_part2
//
//  Created by K.Takahama on R 4/11/30.
//

import SwiftUI

struct AddView: View {
    //ContentViewでデータが扱えるように
    @ObservedObject var expenses: Expenses
    
    //AddViewでデータを扱えるように
    @State private var name = ""
    @State private var type = "personal"
    @State private var amount = 0.0
    
    let types = ["Business","Personal"]
    
    var body: some View {
        NavigationView {
            Form {
                TextField("Name", text: $name)
                    .keyboardType(.phonePad)
                
                Picker("Type", selection: $type) {
                    ForEach(types, id: \.self) {
                        Text($0)
                    }
                }
                TextField("Amount", value: $amount, format: .currency(code: "USD"))
                    .keyboardType(.decimalPad)
            }
            .navigationTitle("Add new expense")
        }
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        AddView(expenses: Expenses())
    }
}
