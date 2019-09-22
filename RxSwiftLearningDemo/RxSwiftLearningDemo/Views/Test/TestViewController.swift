//
//  TestViewController.swift
//  RxSwiftLearningDemo
//
//  Created by Stephen Cao on 22/9/19.
//  Copyright © 2019 Stephen Cao. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class TestViewController: UIViewController {
    
    let disposeBag = DisposeBag()
    
    @IBOutlet weak var button: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        button.rx.tap.subscribe(onNext: {
            print("touch")
            }).disposed(by: disposeBag)
    }
}
