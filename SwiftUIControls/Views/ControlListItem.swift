//
//  ControlListItem.swift
//  SwiftUIControls
//
//  Created by Anish Kumar on 04/06/24.
//

import SwiftUI

struct ControlListItem: View {
    let item: UIControlItem
    
    var body: some View {
        NavigationLink(item.title, value: item)
    }
}

#Preview {
    ControlListItem(item: UIControlsData.list.first!)
}
