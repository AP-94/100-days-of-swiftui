//
//  MainView.swift
//  Project9
//
//  Created by clarknt on 2019-11-06.
//  Copyright © 2019 clarknt. All rights reserved.
//

import SwiftUI

import SwiftUI

struct NamedView {
    var name: String
    var view: AnyView

    init<V>(_ name: String, view: V) where V: View {
        self.name = name
        self.view = AnyView(view)
    }
}

struct MainView: View {
    private let topics: [NamedView] = [
        NamedView("Creating custom paths with SwiftUI", view: CustomPaths()),
        NamedView("Paths vs shapes in SwiftUI", view: PathsVsShapes()),
        NamedView("Adding strokeBorder() support with InsettableShape", view: StrokeBorderSupport()),
        NamedView("Transforming shapes using CGAffineTransform and even-odd fills", view: TransformingShapes()),
        NamedView("Creative borders and fills using ImagePaint", view: CreativeBorders()),
        NamedView("Enabling high-performance Metal rendering with drawingGroup()", view: MetalRendering()),
        NamedView("Special effects in SwiftUI: blurs, blending, and more", view: SpecialEffects()),
        NamedView("Animating simple shapes with animatableData", view: AnimatingShapes()),
    ]

    var body: some View {
        NavigationView {
            List(0..<topics.count) { i in
                NavigationLink(destination: self.topics[i].view) {
                    Text(self.topics[i].name)
                }
            }
            .navigationBarTitle("Topics")
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
