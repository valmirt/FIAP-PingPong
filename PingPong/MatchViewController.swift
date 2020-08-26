//
//  MatchViewController.swift
//  PingPong
//
//  Created by Valmir Junior on 25/08/20.
//  Copyright © 2020 Valmir Junior. All rights reserved.
//

import UIKit

class MatchViewController: UIViewController {
    
    @IBOutlet weak var labelPlayerOne: UILabel!
    @IBOutlet weak var labelPlayerTwo: UILabel!
    @IBOutlet weak var tfScorePlayerOne: UITextField!
    @IBOutlet weak var tfScorePlayerTwo: UITextField!
    @IBOutlet weak var tvAllMatches: UITextView!
    
    var playerOne = "Jogador 1"
    var playerTwo = "Jogador 2"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Tela 2: viewDidLoad")
        
        labelPlayerOne.text = playerOne
        labelPlayerTwo.text = playerTwo
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("Tela 2: viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("Tela 2: viewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("Tela 2: viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("Tela 2: viewDidDisappear")
    }
    
    @IBAction func addScore(_ sender: UIButton) {
        if sender.restorationIdentifier == "addScorePlayerOne" {
            let score = tfScorePlayerOne.text
            tfScorePlayerOne.text = String((Int(score ?? "0") ?? 0) + 1)
        } else {
            let score = tfScorePlayerTwo.text
            tfScorePlayerTwo.text = String((Int(score ?? "0") ?? 0) + 1)
        }
    }
    
    @IBAction func registerMatch(_ sender: UIButton) {
        tvAllMatches.text += "\(labelPlayerOne.text ?? playerOne) (\(tfScorePlayerOne.text ?? String(0))) x (\(tfScorePlayerTwo.text ?? String(0))) \(labelPlayerTwo.text ?? playerTwo)\n"
        tfScorePlayerOne.text = "0"
        tfScorePlayerTwo.text = "0"
    }
}
