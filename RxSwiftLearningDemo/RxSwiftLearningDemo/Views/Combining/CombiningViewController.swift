//
//  CombiningViewController.swift
//  RxSwiftLearningDemo
//
//  Created by Stephen Cao on 4/10/19.
//  Copyright © 2019 Stephen Cao. All rights reserved.
//

import UIKit
import RxCocoa
import RxSwift
import RxSwiftExt

class CombiningViewController: UIViewController {

    private let bag = DisposeBag()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        // Do any additional setup after loading the view.
        
//        let numbers = Observable<Int>.from([2,3,4])
//
//        numbers
//            .startWith(1)
//            .subscribe(onNext: { (element) in
//            print(element)
//            }).disposed(by: bag)
        
        let first = Observable<Int>.from([1,2,3])
        
        let second = Observable<Int>.from([4,5,6])
        
//        Observable
//            .concat([first, second]).subscribe(onNext: { (element) in
//                print(element)
//            }).disposed(by: bag)
        
        first
            .concat(second)
            .subscribe(onNext: { (element) in
                print(element)
            })
            .disposed(by: bag)
    }
}
