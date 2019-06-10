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
let cymbalPath = Bundle.main.bundleURL.appendingPathComponent("cymbal.mp3")
    
//シンバル用のプレイヤーインスタンスを作成
var cymbalPlayer = AVAudioPlayer()
    
    @IBAction func cymbal(_ sender: Any) {

do{
//シンバル用のプレイヤーに、音源ファイルを指定
cymbalPlayer = try AVAudioPlayer(contentsOf: cymbalPath , fileTypeHint: nil)
        
//シンバルの音の再生
cymbalPlayer.play()
} catch {
  print("シンバルでエラーが発生しました！")
        }
    }
    
//ギターの音源ファイルを指定
let guitarPath = Bundle.main.bundleURL.appendingPathComponent("guitar.mp3")
        
//ギター用のプレイヤーインスタンスを作成
var guitarPlayer = AVAudioPlayer()
        
    
    @IBAction func guitar(_ sender: Any) {
        
        do{
// ギター用のプレイヤーに、音源ファイルを指定
guitarPlayer = try AVAudioPlayer(contentsOf: guitarPath , fileTypeHint: nil)
            
//ギターの音の再生
guitarPlayer.play()
    }catch{
 print("ギターでエラーが発生ました！")
        }
    }
//バックミュージックの音源ファイルの指定
let backmusicPath = Bundle.main.bundleURL.appendingPathComponent("backmusic.mp3")
    
//バックミュージック用のプレイヤーインスタンスを作成
var backmusicPlayer = AVAudioPlayer()
    
    @IBAction func play(_ sender: Any) {
    
        do{
//バックミュージック用のぴプレイヤーに音源ファイルを指定
backmusicPlayer = try AVAudioPlayer(contentsOf: backmusicPath, fileTypeHint: nil)
            
//リピート設定
backmusicPlayer.numberOfLoops = -1
backmusicPlayer.play()
        }catch{
    print("エラーが発生しました！")
        }
    }
    
    @IBAction func stop(_ sender: Any) {

//バックミュージックの停止
backmusicPlayer.stop()
    }
}

