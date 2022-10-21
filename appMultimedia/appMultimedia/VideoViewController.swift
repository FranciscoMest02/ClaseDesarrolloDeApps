//
//  VideoViewController.swift
//  appMultimedia
//
//  Created by Alumno on 21/10/22.
//

import UIKit
import AVKit

class VideoViewController: UIViewController {
    @IBAction func goBackHome(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    @IBAction func verVideoAhora(_ sender: UIButton) {
        if let ruta = Bundle.main.path(forResource: "birdsVideo", ofType: "mp4")
        {
            let player = AVPlayerViewController()
            /*/
            var videoUrl: URL
            if #available(iOS 16.0, *) {
                videoUrl = URL(filePath: ruta)
            } else {
                videoUrl = URL(fileURLWithPath: ruta)
            }*/
            
            let videoUrl = URL(fileURLWithPath: ruta)
            let video = AVPlayer(url: videoUrl)
            player.player = video
            present(player, animated: true, completion: {
                video.play()
            })
        } else {
            let alert = UIAlertController(title: "Alerta", message: "Hola", preferredStyle: UIAlertController.Style.alert)
            
            alert.addAction(UIAlertAction(title: "Cerrar", style: UIAlertAction.Style.cancel))
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    @IBAction func verVideo(_ sender: UIButton) {
        if let ruta = Bundle.main.path(forResource: "birdsVideo", ofType: "mp4")
        {
            let player = AVPlayerViewController()
            
            var videoUrl: URL
            if #available(iOS 16.0, *) {
                videoUrl = URL(filePath: ruta)
            } else {
                videoUrl = URL(fileURLWithPath: ruta)
            }
            
            //let videoUrl = URL(filePath: ruta)
            let video = AVPlayer(url: videoUrl)
            player.player = video
            present(player, animated: true, completion: {
                video.play()
            })
        } else {
            let alert = UIAlertController(title: "Alerta", message: "Hola", preferredStyle: UIAlertController.Style.alert)
            
            alert.addAction(UIAlertAction(title: "Cerrar", style: UIAlertAction.Style.cancel))
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}
