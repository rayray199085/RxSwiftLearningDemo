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
        
//        Observable
//            .of(1,2,3,4,5,6)
//            .filter({ $0 % 2 == 0})
//            .subscribe(onNext: { (element) in
//            print(element)
//            }).disposed(by: disposeBag)
        
//        Observable
//            .of("A","B","C","D","E","F")
//            .skip(3).subscribe(onNext: { (element) in
//                print(element)
//            })
//            .disposed(by: disposeBag)
        
//        Observable
//            .of("2","2","3","4","4")
//            .skipWhile({ (Int($0) ?? 0) % 2 == 0})
//            .subscribe(onNext: { (element) in
//                print(element)
//            }).disposed(by: disposeBag)
        
//        let trigger = PublishSubject<String>()
//        publishSubject
//            .skipUntil(trigger)
//            .subscribe(onNext: { (element) in
//                print(element)
//            }).disposed(by: disposeBag)
//
//        publishSubject.onNext("A")
//        publishSubject.onNext("B")
//
//        trigger.onNext("x")
//        publishSubject.onNext("C")
//        publishSubject.onNext("D")
        
//        Observable
//            .of(1,2,3,4,5,6)
//            .take(3)
//            .subscribe(onNext: { (element) in
//                print("\(element)")
//            })
//            .disposed(by: disposeBag)
        
//        Observable
//            .of(2,2,4,3,6,6)
//            .takeWhileWithIndex({ $0 % 2 == 0 && $1 < 6})
//            .subscribe(onNext: { (element) in
//                print(element)
//            })
//            .disposed(by: disposeBag)
        
//        Observable
//            .of("A", "A", "B", "B", "B", "A")
//            .distinctUntilChanged().subscribe(onNext: { (element) in
//                print(element)
//            }).disposed(by: disposeBag)
//        let a = FilterModel(value: 1, name: "a")
//        let b = FilterModel(value: 2, name: "a")
//        let c = FilterModel(value: 3, name: "c")
//        let d = FilterModel(value: 1, name: "d")
//        let e = FilterModel(value: 1, name: "e")
//        Observable
//            .of(a,b,c,d,e)
//            .distinctUntilChanged({ $0.name == $1.name})
//            .subscribe(onNext: { (filterModel) in
//                print(filterModel)
//            }).disposed(by: disposeBag)
        
        let formatter = NumberFormatter()
          formatter.numberStyle = .spellOut
        // 2
          Observable<NSNumber>.of(10, 110, 20, 200, 210, 310)
            // 3
            .distinctUntilChanged { a, b in
              // 4
              guard let aWords = formatter.string(from:
        a)?.components(separatedBy: " "),
              let bWords = formatter.string(from: b)?.components(separatedBy: " ")
        else {
            return false
              }
              var containsMatch = false
                for aWord in aWords {
                        for bWord in bWords {
                          if aWord == bWord {
                            containsMatch = true
                break
                } }
                }
                      return containsMatch
                    }
                // 4
                    .subscribe(onNext: {
                      print($0)
                })
            .disposed(by: disposeBag)
    }
}
