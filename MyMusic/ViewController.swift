//
//  ViewController.swift
//  MyMusic
//
//  Created by 児玉楓実 on 2019/06/10.
//  Copyright © 2019 KodamaFumi. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

// シンバルの音源ファイルを指定
let cymbalPath =
    Bundle.main.bundleURL.appendingPathComponent("cymbal.mp3")
    
//シンバル用のプレイヤーインスタンスを作成
var cymbalPlayer = AVAudioPlayer()
    
    @IBAction func cymbal(_ sender: Any) {

do{
//シンバル用のプレイヤーに、音源ファイルを指定
cymbalPlayer = try AVAudioPlayer(contentsOf: cymbalPath, fileTypeHint: nil)
        
//シンバルの音の再生
cymbalPlayer.play()
} catch {
  print("シンバルでエラーが発生しました！")
        }
    

}
}

