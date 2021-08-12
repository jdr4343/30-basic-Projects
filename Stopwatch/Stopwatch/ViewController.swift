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
        let CircleBtn: (UIButton) -> Void = { button in
            button.layer.cornerRadius = 0.5 * button.bounds.size.width
            button.backgroundColor = UIColor.white
        }
        CircleBtn(lapBtn)
        CircleBtn(startBtn)
        
        startBtn.isEnabled = false
        
        lapsTableView.delegate = self
        lapsTableView.dataSource = self
    }
    


}
//확장자로 델리게이트와 데이터소스 연결
extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        laps.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "lapsCell", for: indexPath)
        //라벨에 태그 되어 있는 넘버로 연결
        if let labelNum = cell.viewWithTag(11) as? UILabel {
          labelNum.text = "Lap \(laps.count - (indexPath as IndexPath).row)"
        }
        if let labelTimer = cell.viewWithTag(12) as? UILabel {
        labelTimer.text = laps[laps.count - (indexPath as IndexPath).row - 1]
        }
        return cell
    }
    
    
}
