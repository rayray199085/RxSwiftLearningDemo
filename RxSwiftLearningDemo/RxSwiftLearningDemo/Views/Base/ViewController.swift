//
//  ViewController.swift
//  RxSwiftLearningDemo
//
//  Created by Stephen Cao on 21/9/19.
//  Copyright © 2019 Stephen Cao. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

private let reuseIdentifier = "base_cell"
class ViewController: UIViewController {

    private let listViewModel = ListViewModel()
    private let disposeBag = DisposeBag()
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: reuseIdentifier)
        listViewModel.data.bind(to: tableView.rx.items(cellIdentifier: reuseIdentifier)){ _,controllerInfo,cell in
            cell.textLabel?.text = controllerInfo.displayTitle
        }.disposed(by: disposeBag)
        
        tableView.rx.modelSelected(ControllerInfo.self).subscribe(onNext: { [weak self](controllerInfo) in
            guard let bundleName = Bundle.main.infoDictionary?["CFBundleName"] as? String,
                  let cls = NSClassFromString("\(bundleName).\(controllerInfo.className)") as? UIViewController.Type else{
                return
            }
            let vc = cls.init()
            vc.title = controllerInfo.displayTitle
            self?.navigationController?.pushViewController(vc, animated: true)
            }).disposed(by: disposeBag)
    }
}

