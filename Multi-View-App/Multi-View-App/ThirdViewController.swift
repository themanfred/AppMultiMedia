//
//  ThirdViewController.swift
//  Multi-View-App
//
//  Created by Alumno on 21/10/22.
//

import UIKit
import AVKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    @IBAction func mostrarVideo(_ sender: Any) {
                let ruta = Bundle.main.path(forResource: "Coco", ofType: "mp4")
                let player = AVPlayerViewController()
                let videoUrl = URL(filePath: ruta!)
                let video = AVPlayer(url: videoUrl)
                player.player = video
                present(player, animated: true, completion: {
                    video.play()
                })
        }
}
