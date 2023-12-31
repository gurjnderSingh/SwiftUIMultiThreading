//
//  ListRowView.swift
//  TodoListSUI
//
//  Created by Gurjinder Singh on 02/11/23.
//

import SwiftUI

struct ListRowView: View {
    var item: ItemModel
    var body: some View {
        HStack {
            Image(systemName: item.isCompleted ? "checkmark.circle" : "circle")
                .foregroundColor(item.isCompleted ? .green : .red)
            Text(item.title)
            Spacer()
        }
        .font(.title2)
        .padding(.vertical, 8)
    }
}

struct ListRowView_Previews: PreviewProvider {
    static var item1: ItemModel = ItemModel(Title: "Item One", IsCompleted: true)
    static var item2: ItemModel = ItemModel(Title: "Item One", IsCompleted: false)

    static var previews: some View {
//        Group {
            ListRowView(item: item1)
//            ListRowView(item: item2)
//        }.previewLayout(.sizeThatFits)
        
    }
}
