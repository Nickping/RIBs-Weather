//
//  RootRouter.swift
//  Weather
//
//  Created by Euijoon Jung on 2022/07/11.
//

import RIBs

protocol RootInteractable: Interactable, LoggedOutListener {
    var router: RootRouting? { get set }
    var listener: RootListener? { get set }
}

protocol RootViewControllable: ViewControllable {
    // TODO: Declare methods the router invokes to manipulate the view hierarchy.
    
    func present(viewController: ViewControllable)
}

//final class RootRouter: ViewableRouter<RootInteractable, RootViewControllable>, RootRouting {
final class RootRouter: LaunchRouter<RootInteractable, RootViewControllable>, RootRouting {

//    // TODO: Constructor inject child builder protocols to allow building children.
//    override init(interactor: RootInteractable, viewController: RootViewControllable) {
//        super.init(interactor: interactor, viewController: viewController)
//        interactor.router = self
//    }
    
    private let loggedOutBuilder: LoggedOutBuildable
    
    private var loggedOut: ViewableRouting?
    
    init(interactor: RootInteractable,
         viewController: RootViewControllable,
         loggedOutBuilder: LoggedOutBuildable) {
            
        self.loggedOutBuilder = loggedOutBuilder
        super.init(interactor: interactor, viewController: viewController)
        interactor.router = self
    }
    
    override func didLoad() {
        super.didLoad()
        
        let loggedOut = loggedOutBuilder.build(withListener: interactor)
        self.loggedOut = loggedOut
        attachChild(loggedOut)
        
        viewController.present(viewController: loggedOut.viewControllable)
        
        
    }
}
