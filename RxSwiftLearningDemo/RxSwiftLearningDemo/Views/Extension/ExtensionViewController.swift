//
//  ExtensionViewController.swift
//  RxSwiftLearningDemo
//
//  Created by Stephen Cao on 21/9/19.
//  Copyright © 2019 Stephen Cao. All rights reserved.
//

import UIKit
import RxCocoa
import RxSwift

class ExtensionViewController: UIViewController {
    private let disposeBag = DisposeBag()
    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let observable = Observable<Int>.interval(.seconds(1), scheduler: MainScheduler.instance)
        
        observable
            .map({ CGFloat($0) })
            .bind(to: label.rx.fontSize)
            .disposed(by: disposeBag)
        
    }
}
extension Reactive where Base: UILabel{
    var fontSize: Binder<CGFloat>{
        return Binder(self.base) { (label, font) in
            label.font = UIFont.systemFont(ofSize: font)
        }
    }
}
