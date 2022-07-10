//
//  RootComponent+LoggedOut.swift
//  Weather
//
//  Created by Euijoon Jung on 2022/07/11.
//

import RIBs

/// The dependencies needed from the parent scope of Root to provide for the LoggedOut scope.
// TODO: Update RootDependency protocol to inherit this protocol.
protocol RootDependencyLoggedOut: Dependency {
    // TODO: Declare dependencies needed from the parent scope of Root to provide dependencies
    // for the LoggedOut scope.
}

extension RootComponent: LoggedOutDependency {

    // TODO: Implement properties to provide for LoggedOut scope.
}
