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
    // Create userSession Variable of type UserSession with initial value of .loggedOut
//    let variable = Variable<UserSession>(.loggedOut)
//    let publishSubject = PublishSubject<String>()
    //
    //    public let cards = [
    //      ("🂡", 11), ("🂢", 2), ("🂣", 3), ("🂤", 4), ("🂥", 5), ("🂦", 6), ("🂧", 7), ("🂨", 8), ("🂩", 9), ("🂪", 10), ("🂫", 10), ("🂭", 10), ("🂮", 10),
    //      ("🂱", 11), ("🂲", 2), ("🂳", 3), ("🂴", 4), ("🂵", 5), ("🂶", 6), ("🂷", 7), ("🂸", 8), ("🂹", 9), ("🂺", 10), ("🂻", 10), ("🂽", 10), ("🂾", 10),
    //      ("🃁", 11), ("🃂", 2), ("🃃", 3), ("🃄", 4), ("🃅", 5), ("🃆", 6), ("🃇", 7), ("🃈", 8), ("🃉", 9), ("🃊", 10), ("🃋", 10), ("🃍", 10), ("🃎", 10),
    //      ("🃑", 11), ("🃒", 2), ("🃓", 3), ("🃔", 4), ("🃕", 5), ("🃖", 6), ("🃗", 7), ("🃘", 8), ("🃙", 9), ("🃚", 10), ("🃛", 10), ("🃝", 10), ("🃞", 10)
    //    ]
    //
    //    public func cardString(for hand: [(String, Int)]) -> String {
    //      return hand.map { $0.0 }.joined(separator: "")
    //    }
    //
    //    public func points(for hand: [(String, Int)]) -> Int {
    //      return hand.map { $0.1 }.reduce(0, +)
    //    }
    //
    //    public enum HandError: Error {
    //
    //      case busted
    //    }
    
    //    let dealtHand = PublishSubject<[(String, Int)]>()
    //
    //    func deal(_ cardCount: UInt) {
    //      var deck = cards
    //      var cardsRemaining: UInt32 = 52
    //      var hand = [(String, Int)]()
    //
    //      for _ in 0..<cardCount {
    //        let randomIndex = Int(arc4random_uniform(cardsRemaining))
    //        hand.append(deck[randomIndex])
    //        deck.remove(at: randomIndex)
    //        cardsRemaining -= 1
    //      }
    //
    //      // Add code to update dealtHand here
    //        if points(for: hand) > 21{
    //            dealtHand.onError(HandError.busted)
    //        }else{
    //            dealtHand.onNext(hand)
    //        }
    //    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
//        publishSubject.onNext("111")
//
//        publishSubject.subscribe(onNext: { (text) in
//            print("the first time subscribes \(text)")
//        }, onCompleted: {
//            print("first completed")
//            }).disposed(by: disposeBag)
//
//        publishSubject.onNext("222")
//
//        publishSubject.subscribe(onNext: { (text) in
//            print("the second time subscribes \(text)")
//        }, onCompleted: {
//            print("second completed")
//            }).disposed(by: disposeBag)
//
//        publishSubject.onNext("333")
//        publishSubject.onCompleted()
        
//        let subject = PublishSubject<String>()
//        subject.onNext("Is anyone listening?")
//        let subscriptionOne = subject.subscribe(onNext: { (element) in
//            print(element)
//            })
//        subject.onNext("1")
//        subject.onNext("2")
//        subscriptionOne.disposed(by: disposeBag)
        
//        let subject = PublishSubject<String>()
//        subject.onCompleted()
//        subject.onNext("5")
//        subscriptionTwo.dispose()
//        let disposeBag = DisposeBag()
//
//        subject
//          .subscribe {
//            print("3)", $0.element ?? $0)
//          }
//        .disposed(by: disposeBag)
//        subject.onNext("?")
        
//        let subject = BehaviorSubject(value: "Initial Value")
//        subject.onNext("X")
//        subject.subscribe({ event in
//            print("1) \(event)")
//            }).disposed(by: disposeBag)
//
//        subject.onError(MyError.anError)
//
//        subject.subscribe({ event in
//        print("2) \(event)")
//        }).disposed(by: disposeBag)
        
//        let subject = ReplaySubject<String>.create(bufferSize: 2)
//
//        subject.onNext("1")
//        subject.onNext("2")
//        subject.onNext("3")
//
//        subject.subscribe({ event in
//            print("1 \(event)")
//        }).disposed(by: disposeBag)
//
//        subject.subscribe({ event in
//            print("2 \(event)")
//        }).disposed(by: disposeBag)
//
//        subject.onNext("4")
//        subject.onError(MyError.anError)
//        subject.dispose()
//
//        subject.subscribe({ event in
//            print("3 \(event)")
//        }).disposed(by: disposeBag)
        
//        let variable = Variable("Initial value")
//
//        variable.value = "New initial value"
//        variable.asObservable().subscribe({ event in
//            print("1) \(event)")
//            }).disposed(by: disposeBag)
//
//        variable.value = "1"
//        variable.asObservable().subscribe({ event in
//            print("2) \(event)")
//            }).disposed(by: disposeBag)
//
//        variable.value = "2"
//        dealtHand.subscribe(onNext: { [weak self](hand) in
//            print(self?.cardString(for: hand) ?? "")
//            print(self?.points(for: hand) ?? "")
//        }, onError: { (error) in
//            print(error)
//            }).disposed(by: disposeBag)
//
//        deal(3)
        
        // Subscribe to receive next events from userSession
//        variable.asObservable().subscribe({ event in
//            print(event)
//            }).disposed(by: disposeBag)
//
//        for i in 1...2 {
//          let password = i % 2 == 0 ? "appleseed" : "password"
//
//          logInWith(username: "johnny@appleseed.com", password: password) { error in
//            guard error == nil else {
//              print(error!)
//              return
//            }
//
//            print("User logged in.")
//          }
//
//          performActionRequiringLoggedInUser {
//            print("Successfully did something only a logged in user can do.")
//          }
//        }
//
    }
//    enum UserSession {
//
//      case loggedIn, loggedOut
//    }
//
//    enum LoginError: Error {
//
//      case invalidCredentials
//    }
//
//
//    func logInWith(username: String, password: String, completion: (Error?) -> Void) {
//      guard username == "johnny@appleseed.com",
//        password == "appleseed"
//        else {
//          completion(LoginError.invalidCredentials)
//          return
//      }
//
//      // Update userSession
//        variable.value = .loggedIn
//        completion(nil)
//    }
//
//    func logOut() {
//      // Update userSession
//        variable.value = .loggedOut
//
//    }
//
//    func performActionRequiringLoggedInUser(_ action: () -> Void) {
//      // Ensure that userSession is loggedIn and then execute action()
//        if variable.value == .loggedIn{
//            action()
//        }
//    }
}
