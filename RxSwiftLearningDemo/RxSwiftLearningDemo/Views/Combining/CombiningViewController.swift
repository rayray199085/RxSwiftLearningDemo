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
        
//        let first = Observable<Int>.from([1,2,3])
//
//        let second = Observable<Int>.from([4,5,6])
        
//        Observable
//            .concat([first, second]).subscribe(onNext: { (element) in
//                print(element)
//            }).disposed(by: bag)
        
//        first
//            .concat(second)
//            .subscribe(onNext: { (element) in
//                print(element)
//            })
//            .disposed(by: bag)
//        let left = PublishSubject<String>()
//        let right = PublishSubject<String>()
        
//        Observable
//            .merge([left, right])
//            .subscribe(onNext: { (element) in
//                print(element)
//            }).disposed(by: bag)
//
//        left.onNext("1")
//        right.onNext("4")
//        right.onNext("5")
//        left.onNext("2")
//        right.onNext("6")
//        left.onNext("3")
//        let source = Observable.of(left.asObservable(), right.asObservable())
//
//        source
//            .merge()
//            .subscribe(onNext: { (element) in
//            print(element)
//            }).disposed(by: bag)
//        left.onNext("1")
//        right.onNext("4")
//        right.onNext("5")
//        left.onNext("2")
//        right.onNext("6")
//        left.onNext("3")
        
//        let observable = source.merge()
//        let disposable = observable.subscribe(onNext: { value in
//          print(value)
//        })
//
//        var leftValues = ["Berlin", "Munich", "Frankfurt"]
//        var rightValues = ["Madrid", "Barcelona", "Valencia"]
//        repeat {
//          if arc4random_uniform(2) == 0 {
//            if !leftValues.isEmpty {
//              left.onNext("Left:  " + leftValues.removeFirst())
//            }
//          } else if !rightValues.isEmpty {
//            right.onNext("Right: " + rightValues.removeFirst())
//          }
//        } while !leftValues.isEmpty || !rightValues.isEmpty
        // 5
//          disposable.dispose()
        
//        let left = PublishSubject<String>()
//        let right = PublishSubject<String>()
//
//        let observable = Observable.combineLatest([left, right]){
//            $0.joined(separator: " ")
//        }
//        let observable = Observable.combineLatest(left, right) { lastLeft, lastRight in
//            "\(lastLeft) \(lastRight)"
//        }
//        observable
//            .subscribe(onNext: { (element) in
//            print(element)
//            }).disposed(by: bag)
//
//        print("> Sending a value to Left")
//        left.onNext("Hello,")
//        print("> Sending a value to Right")
//        right.onNext("world")
//        print("> Sending another value to Right")
//        right.onNext("RxSwift")
//        print("> Sending another value to Left")
//        left.onNext("Have a good day,")
        
//        let choice : Observable<DateFormatter.Style> =
//        Observable.of(.short, .long)
//          let dates = Observable.of(Date())
//        Observable
//            .combineLatest(choice, dates){ (lastChoice, lastDate) -> String in
//            let dateFormatter = DateFormatter()
//            dateFormatter.dateStyle = lastChoice
//            return dateFormatter.string(from: Date())}
//            .subscribe(onNext: { (dateString) in
//            print(dateString) })
//            .disposed(by: bag)
//          let observable = Observable.combineLatest(choice, dates) {
//            (format, when) -> String in
//            let formatter = DateFormatter()
//            formatter.dateStyle = format
//            return formatter.string(from: when)
//          }
//          observable.subscribe(onNext: { value in
//            print(value)
//        })
//        let left : Observable<Weather> = Observable.of(.sunny, .cloudy, .cloudy, .sunny)
//        let right = Observable.of("Lisbon", "Copenhagen", "London", "Madrid",
//        "Vienna")
//
//        Observable
//            .zip(left, right){ "It's \($0) in \($1)" }
//            .subscribe(onNext: { (element) in
//                print(element)
//            })
//            .disposed(by: bag)
        
        let button = PublishSubject<Void>()
        let textField = PublishSubject<String>()
        
//        button
//            .withLatestFrom(textField)
//            .subscribe(onNext: { (element) in
//                print(element)
//            }).disposed(by: bag)
//
//        textField.onNext("Pa")
//        textField.onNext("Par")
//        textField.onNext("Paris")
//
//        button.onNext(())
//        button.onNext(())
        
        textField
            .sample(button)
            .subscribe(onNext: { (element) in
                print(element)
            })
            .disposed(by: bag)
        
        textField.onNext("Pa")
        textField.onNext("Par")
        textField.onNext("Paris")
        
        button.onNext(())
        button.onNext(())
    }
//    enum Weather{
//        case sunny
//        case cloudy
//    }
}
