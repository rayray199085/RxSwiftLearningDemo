//
//  TransformingViewController.swift
//  RxSwiftLearningDemo
//
//  Created by Stephen Cao on 1/10/19.
//  Copyright © 2019 Stephen Cao. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa
import RxSwiftExt


class TransformingViewController: UIViewController {
    private let disposeBag = DisposeBag()
//    private let publishSubject = PublishSubject<Int>()
    
    let contacts = [
      "603-555-1212": "Florent",
      "212-555-1212": "Junior",
      "408-555-1212": "Marin",
      "617-555-1212": "Scott"
    ]
    
    let input = PublishSubject<String>()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        let convert: (String) -> Int? = { value in
          if let number = Int(value),
             number < 10 {
            return number
          }
          
          let keyMap: [String: Int] = [
            "abc": 2, "def": 3, "ghi": 4,
            "jkl": 5, "mno": 6, "pqrs": 7,
            "tuv": 8, "wxyz": 9
          ]
          
          let converted = keyMap
            .filter { $0.key.contains(value.lowercased()) }
            .map { $0.value }
            .first
          return converted
        }
        
        let format: ([Int]) -> String = {
          var phone = $0.map(String.init).joined()
          
          phone.insert("-", at: phone.index(
            phone.startIndex,
            offsetBy: 3)
          )
          
          phone.insert("-", at: phone.index(
            phone.startIndex,
            offsetBy: 7)
          )
          
          return phone
        }
        
        let dial: (String) -> String = {
            if let contact = self.contacts[$0] {
            return "Dialing \(contact) (\($0))..."
          } else {
            return "Contact not found"
          }
        }
        
        input
            .map({ convert($0) })
            .unwrap()
            .skipWhile({ $0 == 0})
            .filter({ $0 >= 0 && $0 <= 9 })
            .take(10)
            .toArray()
            .map({ format($0) })
            .map({ dial($0) })
            .subscribe(onSuccess: {
                print($0)
            })
            .disposed(by: disposeBag)
            
        
        input.onNext("")
        input.onNext("0")
        input.onNext("408")
        
        input.onNext("6")
        input.onNext("")
        input.onNext("0")
        input.onNext("3")
        
        "JKL1A1B".forEach {
          input.onNext("\($0)")
        }
        
        input.onNext("9")
        
        // Do any additional setup after loading the view.
        
//        Observable
//            .of("A", "B", "C")
//            .toArray()
//            .subscribe(onSuccess: { (array) in
//                print(array)
//            }) { (error) in
//                print(error)
//        }.disposed(by: disposeBag)
        
//        publishSubject
//            .asObserver()
//            .map({ $0 * 2})
//            .subscribe(onNext: { (element) in
//                print(element)
//            }).disposed(by: disposeBag)
//
//        publishSubject.onNext(1)
//        publishSubject.onNext(2)
//        publishSubject.onNext(3)
        
//        let numberFormatter = NumberFormatter()
//        numberFormatter.numberStyle = .spellOut
//
//        Observable<NSNumber>
//            .of(123,4,56)
//            .map({ numberFormatter.string(from: $0)})
//            .subscribe(onNext: { (element) in
//                print(element ?? "")
//            })
//            .disposed(by: disposeBag)
        
//        Observable
//            .of(1, 2, 3)
//            .enumerated()
//            .map({ $0 > 1 ? $1 * 2 : $1})
//            .subscribe(onNext: {
//                print($0)
//            })
//            .disposed(by: disposeBag)
//
//        let ryan = Student(score: BehaviorRelay<Int>(value: 80))
//        let charlotte = Student(score: BehaviorRelay<Int>(value: 90))
//
//        let student = PublishSubject<Student>()
        
//        student
//            .asObserver()
//            .flatMap({ $0.score.asObservable() })
//            .subscribe(onNext: { (score) in
//                print(score)
//            }).disposed(by: disposeBag)
//
//        student.onNext(ryan)
//        student.onNext(charlotte)
//
//        ryan.score.accept(85)
        
//        student
//            .asObserver()
//            .flatMapLatest({ $0.score.asObservable() })
//            .subscribe(onNext: { (score) in
//                print(score)
//            })
//            .disposed(by: disposeBag)
//
//        student.onNext(ryan)
//        ryan.score.accept(85)
//
//        student.onNext(charlotte)
//        ryan.score.accept(95)
//
//        charlotte.score.accept(100)
    }

}
