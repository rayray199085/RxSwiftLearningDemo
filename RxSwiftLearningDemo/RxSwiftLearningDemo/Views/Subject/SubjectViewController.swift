//
//  SubjectViewController.swift
//  RxSwiftLearningDemo
//
//  Created by Stephen Cao on 22/9/19.
//  Copyright © 2019 Stephen Cao. All rights reserved.
//

import UIKit
import RxSwift

class SubjectViewController: UIViewController {
    private let disposeBag = DisposeBag()
    let publishSubject = PublishSubject<String>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        publishSubject.onNext("111")
        
        publishSubject.subscribe(onNext: { (text) in
            print("the first time subscribes \(text)")
        }, onCompleted: {
            print("first completed")
            }).disposed(by: disposeBag)
        
        publishSubject.onNext("222")
       
        publishSubject.subscribe(onNext: { (text) in
            print("the second time subscribes \(text)")
        }, onCompleted: {
            print("second completed")
            }).disposed(by: disposeBag)
        
        publishSubject.onNext("333")
        publishSubject.onCompleted()
    }
}
