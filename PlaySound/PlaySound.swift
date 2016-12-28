//
//  PlaySound.swift
//  PlaySound
//
//  Created by Shinya Yamamoto on 2016/12/28.
//  Copyright © 2016年 shinyayamamoto. All rights reserved.
//

import Foundation
import AVFoundation

class Sound : Any {
    
    func playLaunchSound() {
        let url = Bundle.main.url(forResource: "test", withExtension: "mp3")!
        
        do {
            player = try AVAudioPlayer(contentsOf: url)
            guard let player = player else { return }
            
            player.prepareToPlay()
            player.play()
        } catch let error {
            print(error.localizedDescription)
        }
    }
    
}
