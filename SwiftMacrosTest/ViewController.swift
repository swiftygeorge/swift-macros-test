//
//  ViewController.swift
//  SwiftMacrosTest
//
//  Created by George Mapaya on 2023-06-05.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {
    
    fileprivate let label: UILabel = {
        let label = UILabel()
        label.text = "Me loves Swift Macros 😀"
        label.font = .preferredFont(forTextStyle: .body)
        label.textColor = .label
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .systemBackground
        view.addSubview(label)
        label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        label.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        label.widthAnchor.constraint(lessThanOrEqualTo: view.layoutMarginsGuide.widthAnchor).isActive = true
    }


}

/*
struct ViewControllerRepresentable: UIViewControllerRepresentable {
    typealias UIViewControllerType = ViewController
    
    func makeUIViewController(context: Context) -> ViewController {
        return ViewController()
    }
    
    func updateUIViewController(_ uiViewController: ViewController, context: Context) {
        
    }
}
 */

#Preview(traits: .landscapeLeft) {
    ViewController()
}

