//
//  HomeViewController.swift
//  Localization Protocol
//
//  Created by Bryan Luna on 10/5/23.
//

import UIKit

final class HomeViewController<R: AppRouter>: UIViewController {
    
    private let router: R
    
    private lazy var textView: UITextView = {
        let textView = UITextView()
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.isEditable = false
        textView.text = localizedString(.paragraph)
        textView.textAlignment = .center
        textView.font = UIFont(name: "Georgia", size: 18)
        return textView
    }()
    
    init(router: R) {
        self.router = router
        
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    private func setupUI() {        
        title = localizedString(.title)
        
        navigationController?.navigationBar.prefersLargeTitles = true
        
        view.addSubview(textView)
        
        let inset: CGFloat = 10
        
        NSLayoutConstraint.activate([
            textView.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -inset),
            textView.heightAnchor.constraint(equalTo: view.heightAnchor, constant: -inset),
            textView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            textView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
}

extension HomeViewController: Localization {
    
    typealias Key = AssociatedKeys

    enum AssociatedKeys {
        case title, paragraph
    }
    
    func localizedString(_ key: Key) -> String {
        switch key {
            case .title: return NSLocalizedString("Home Title", comment: "titleKey")
            case .paragraph: return NSLocalizedString("Change to Spanish languaje!", comment: "paragraphKey")
        }
    }
}
