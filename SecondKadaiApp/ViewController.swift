//
//  ViewController.swift
//  SecondKadaiApp
//
//  Created by satoshi_nakajima on 2017/02/07.
//  Copyright © 2017年 satoshi_nakajima. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!    
    @IBOutlet weak var textfield: UITextField!
    @IBAction func handle(_ sender: Any) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // segueから遷移先のResultViewControllerを取得する
        let resultViewController:ResultViewController = segue.destination as! ResultViewController
        // 遷移先のResultViewControllerで宣言しているtext1に値を代入して渡す
        resultViewController.text1 = textfield.text
    }
    
    @IBAction func unwind(segue: UIStoryboardSegue) {
        //他の画面から戻る時に呼ばれる
    }
    
    
}

