//
//  ObservableViewController.swift
//  RxSwiftLearningDemo
//
//  Created by Stephen Cao on 23/9/19.
//  Copyright © 2019 Stephen Cao. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class ObservableViewController: UIViewController {
    let disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        //        let one = 1
        //        let two = 2
        //        let three = 3
                
        //        let observable = Observable.of(one, two, three)
                
        //        observable.subscribe({ event in
        //            print(event)
        //            }).disposed(by: disposeBag)
                
        //        observable.subscribe(onNext: { (element) in
        //            print(element)
        //            }).disposed(by: disposeBag)
                
        //        let observable = Observable<Void>.empty()
        //
        //        observable.subscribe(onNext: { (element) in
        //            print(element)
        //        }, onCompleted: {
        //            print("completed")
        //            }).disposed(by: disposeBag)
                
        //        let observable = Observable.range(start: 1, count: 10)
        //        observable.subscribe(onNext: { i in
        //            let n = Double(i)
        //            let fibonacci = Int(((pow(1.61803, n) - pow(0.61803, n)) / 2.23606).rounded())
        //            print(fibonacci)
        //            }).disposed(by: disposeBag)
                
        //        let observable = Observable.of("A", "B", "C")
        //
        //        let subscription = observable.subscribe({ event in
        //            print(event)
        //        })
        //        subscription.dispose()
                
        //         Observable<String>.create { observer in
        //            // 1
        //              observer.onNext("1")
        //              // 2
        //              observer.onCompleted()
        //            // 3
        //              observer.onNext("?")
        //            // 4
        //              return Disposables.create()
        //        }.subscribe(
        //          onNext: { print($0) },
        //          onError: { print($0) },
        //          onCompleted: { print("Completed") },
        //          onDisposed: { print("Disposed") }
        //        ).disposed(by: disposeBag)
                
        //        var flip = false
        //
        //        let factory = Observable<Int>.deferred({
        //            flip = !flip
        //
        //            if flip{
        //                return Observable.of(1,3,5,7)
        //            }else{
        //                return Observable.of(2,4,6,8)
        //            }
        //        })
        //
        //        for _ in 0..<3{
        //            factory.subscribe(onNext: { (element) in
        //                print(element)
        //            }, onCompleted: {
        //                print("completed")
        //                }).disposed(by: disposeBag)
        //        }
                
        //        let observable = Observable<Any>.never()
        //        observable.do(onNext: { element in
        //            print("do onNext")
        //        }, onError: { (error) in
        //            print("do error")
        //        }, onCompleted: {
        //            print("do completed")
        //        }, onSubscribe: {
        //            print("do subscribe")
        //        }) {
        //            print("do dispose")
        //            }.subscribe(onNext: { (element) in
        //            print("subscribe onNext")
        //        }, onError: { (error) in
        //            print("subscribe error")
        //        }, onCompleted: {
        //            print("subscribe completed")
        //        }) {
        //            print("subscribe dispose")
        //            }.disposed(by: disposeBag)
                
        //        let observable = Observable<Any>.never()
        //        observable
        //            .debug("test", trimOutput: false)
        //            .subscribe(onNext: { (element) in
        //            print("subscribe onNext")
        //        }, onError: { (error) in
        //            print("subscribe error")
        //        }, onCompleted: {
        //            print("subscribe completed")
        //        }) {
        //            print("subscribe dispose")
        //            }.disposed(by: disposeBag)
    }
    
}
