//
//  UIControlsData.swift
//  SwiftUIControls
//
//  Created by Anish Kumar on 04/06/24.
//

import Foundation
import SwiftUI

struct UIControlsData {
    static let list: [UIControlItem] = [
        UIControlItem(title: "Charts", view: ChartsExample()),
        UIControlItem(title: "Images"),
        UIControlItem(title: "Texts"),
        UIControlItem(title: "Links"),
        UIControlItem(title: "Group Box", view: GroupBoxExample()),
        UIControlItem(title: "Disclosure Groups", view: DisclosureGroupsExample()),
        UIControlItem(title: "Labels"),
        UIControlItem(title: "Lists"),
        UIControlItem(title: "Tables"),
        UIControlItem(title: "Split Views"),
        UIControlItem(title: "Share Links", view: ShareLinksExample()),
        UIControlItem(title: "Buttons", view: ButtonsExample()),
        UIControlItem(title: "Menu", view: MenusExample()),
        UIControlItem(title: "Toolbars"),
        UIControlItem(title: "Tab Bars"),
        UIControlItem(title: "Action Sheets", view: ActionSheetsExample()),
        UIControlItem(title: "Alerts", view: AlertsExample()),
        UIControlItem(title: "Page Controls"),
        UIControlItem(title: "Popovers"),
        UIControlItem(title: "Scroll Views"),
        UIControlItem(title: "Sheets"),
        UIControlItem(title: "Color Pickers", view: ColorPickersExample()),
        UIControlItem(title: "Pickers"),
        UIControlItem(title: "Segmented Controls"),
        UIControlItem(title: "Sliders"),
        UIControlItem(title: "Steppers"),
        UIControlItem(title: "Text Fields", view: TextFieldsExample()),
        UIControlItem(title: "Toggles"),
        UIControlItem(title: "Virtual Keyboards"),
        UIControlItem(title: "Activity Rings", view: ActivityRingsExample()),
        UIControlItem(title: "Gauges", view: GaugesExample()),
        UIControlItem(title: "Pressure Indicators"),
        UIControlItem(title: "Forms", view: FormsExample())
    ].sorted { $0.title < $1.title }
}

struct UIControlItem: Hashable {
    static func == (lhs: UIControlItem, rhs: UIControlItem) -> Bool {
        lhs.title == rhs.title
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(title)
    }
    
    let title: String
    var view: any View
    
    init(title: String) {
        self.title = title
        self.view = ContentUnavailableView(
            "\(title) Coming Soon",
            systemImage: "rectangle.on.rectangle.slash.fill",
            description: Text("The example UI for **\(title)** is not yet ready.")
        )
    }
    
    init(title: String, view: any View) {
        self.title = title
        self.view = view
    }
}
