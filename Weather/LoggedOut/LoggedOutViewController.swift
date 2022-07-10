//
//  LoggedOutViewController.swift
//  Weather
//
//  Created by Euijoon Jung on 2022/07/11.
//

import RIBs
import RxSwift
import UIKit

protocol LoggedOutPresentableListener: AnyObject {
    // TODO: Declare properties and methods that the view controller can invoke to perform
    // business logic, such as signIn(). This protocol is implemented by the corresponding
    // interactor class.
}

final class LoggedOutViewController: UIViewController, LoggedOutPresentable, LoggedOutViewControllable {

    weak var listener: LoggedOutPresentableListener?
    
    lazy var sampleLabel: UILabel = {
        let label = UILabel()
        
        label.text = "sample text"
        
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.white
        
        self.view.addSubview(sampleLabel)
        
        sampleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            sampleLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            sampleLabel.centerYAnchor.constraint(equalTo: self.view.centerYAnchor)
        ])
            
        
    }
}
