//
//  FilterViewController.swift
//  RxSwiftLearningDemo
//
//  Created by Stephen Cao on 26/9/19.
//  Copyright © 2019 Stephen Cao. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class FilterViewController: UIViewController {

    let disposeBag = DisposeBag()
    let publishSubject = PublishSubject<String>()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        

//
//        publishSubject.ignoreElements().subscribe({ event in
//            print("You're out!")
//            }).disposed(by: disposeBag)
//
//        publishSubject.onNext("X")
//        publishSubject.onNext("X")
//        publishSubject.onNext("X")
//        publishSubject.onCompleted()
//
//        publishSubject
//            .elementAt(4)
//            .subscribe(onNext: { (element) in
//            print("You're out!")
//        }).disposed(by: disposeBag)
//
//        publishSubject.onNext("X")
//        publishSubject.onNext("X")
//        publishSubject.onNext("X")
        
        Observable
            .of(1,2,3,4,5,6)
            .filter({ $0 % 2 == 0})
            .subscribe(onNext: { (element) in
            print(element)
            }).disposed(by: disposeBag)
    }
}
