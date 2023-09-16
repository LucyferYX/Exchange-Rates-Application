//
//  ViewController.swift
//  Exchange Rates Application
//
//  Created by liene.krista.neimane on 16/09/2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var addTextView: UITextView!
    private let apiUrl = "https://europe-west1-revolut-230009.cloudfunctions.net/revolut-ios"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureButton(addButton)
        configureTextView(addTextView)
    }

}

extension ViewController {
    func configureButton(_ button: UIButton) {
        let symbolConfig = UIImage.SymbolConfiguration(pointSize: 40, weight: .medium)
        let image = UIImage(systemName: "plus.circle.fill", withConfiguration: symbolConfig)
        
        var configuration = button.configuration?.updated(for: addButton)
        configuration?.image = image
        configuration?.imagePadding = 10
        configuration?.imagePlacement = .top
        configuration?.titleAlignment = .center
        button.configuration = configuration
        
        button.titleLabel?.textAlignment = .center
    }
    
    func configureTextView(_ textView: UITextView) {
        textView.textContainerInset = UIEdgeInsets.zero
        textView.textContainer.lineFragmentPadding = 0
        textView.textContainer.maximumNumberOfLines = 0
        textView.isScrollEnabled = true
    }

}
