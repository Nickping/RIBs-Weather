//
//  AppComponent.swift
//  Weather
//
//  Created by Euijoon Jung on 2022/07/11.
//

import RIBs

class AppComponent: Component<EmptyDependency>, RootDependency {
    init() {
        super.init(dependency: EmptyComponent())
    }
}


