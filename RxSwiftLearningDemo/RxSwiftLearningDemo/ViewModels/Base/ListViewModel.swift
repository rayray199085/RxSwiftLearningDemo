//
//  ListViewModel.swift
//  RxSwiftLearningDemo
//
//  Created by Stephen Cao on 21/9/19.
//  Copyright © 2019 Stephen Cao. All rights reserved.
//

import Foundation
import RxCocoa
import RxSwift

struct ListViewModel {
    let data = Observable.just([
        ControllerInfo(className: "ExtensionViewController", displayTitle: "Extension"),
        ControllerInfo(className: "SubjectViewController", displayTitle: "Subject"),
        ControllerInfo(className: "TestViewController", displayTitle: "Test"),
        ControllerInfo(className: "ObservableViewController", displayTitle: "Observable"),
        ControllerInfo(className: "OAndSViewController", displayTitle: "Observable and Subject"),
        ControllerInfo(className: "FilterViewController", displayTitle: "Filter"),
        ControllerInfo(className: "TransformingViewController", displayTitle: "Transforming"),
        ControllerInfo(className: "CombiningViewController", displayTitle: "Combining")])
}
