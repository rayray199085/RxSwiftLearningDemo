//
//  TimingViewController.swift
//  RxSwiftLearningDemo
//
//  Created by Stephen Cao on 9/10/19.
//  Copyright © 2019 Stephen Cao. All rights reserved.
//

import UIKit
import RxCocoa
import RxSwift
import RxSwiftExt


class TimingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        let elementsPerSecond = 1
        let maxElements = 5
        let replayedElements = 1
        let replayDelay: TimeInterval = 3
        
        let sourceObservable = Observable<Int>.create { observer in var value = 1
            let timer = DispatchSource.timer(interval: 1.0 /
            Double(elementsPerSecond), queue: .main) {
                if value <= maxElements { observer.onNext(value)
                      value = value + 1
                    }
                }
                return Disposables.create {
                timer.suspend()
            }
        }.replay(replayedElements)
    }
}
