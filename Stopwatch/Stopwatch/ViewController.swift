//
//  ViewController.swift
//  Stopwatch
//
//  Created by 신지훈 on 2021/08/12.
//

import UIKit

class ViewController: UIViewController {
    //선언
    //동일한 소스 파일에서만 접근 할수있는 fileprivate
    fileprivate let mainStopWatch: Stopwatch = Stopwatch()
    fileprivate let lapStopWatch: Stopwatch = Stopwatch()
    fileprivate var isPlay: Bool = false
    fileprivate var laps: [String] = []
    //UI 구성요소
    
    
    @IBOutlet weak var timeLabel: UILabel!
    
    @IBOutlet weak var lapLabel: UILabel!
    
    @IBOutlet weak var lapBtn: UIButton!
    
    @IBOutlet weak var startBtn: UIButton!
    
    @IBOutlet weak var lapsTableView: UITableView!
    
    
    //수명 주기
    override func viewDidLoad() {
        super.viewDidLoad()
        //버튼을 동그랗게 변경
        let CircleBtn: UIButton = {
            let button = UIButton()
            
        }
    }


}

