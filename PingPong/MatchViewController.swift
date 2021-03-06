//
//  MatchViewController.swift
//  PingPong
//
//  Created by Valmir Junior on 25/08/20.
//  Copyright © 2020 Valmir Junior. All rights reserved.
//

import UIKit

class MatchViewController: UIViewController {
    private var scorePlayerOne = 0
    private var scorePlayerTwo = 0
    
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
        
        setupPlayerNames()
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
    
    private func setupPlayerNames() {
        if playerOne.isEmpty {
            playerOne = "Jogador 1"
        }
        
        if playerTwo.isEmpty {
            playerTwo = "Jogador 2"
        }
        labelPlayerOne.text = playerOne
        labelPlayerTwo.text = playerTwo
    }
    
    @IBAction func addScore(_ sender: UIButton) {
        if sender.restorationIdentifier == "addScorePlayerOne" {
            scorePlayerOne += 1
            tfScorePlayerOne.text = String(scorePlayerOne)
        } else {
            scorePlayerTwo += 1
            tfScorePlayerTwo.text = String(scorePlayerTwo)
        }
    }
    
    @IBAction func registerMatch(_ sender: UIButton) {
        tvAllMatches.text +=
        "\(playerOne) (\(tfScorePlayerOne.text ?? String(0))) x (\(tfScorePlayerTwo.text ?? String(0))) \(playerTwo)\n"
        
        resetPoints()
    }
    
    private func resetPoints() {
        scorePlayerOne = 0
        scorePlayerTwo = 0
        tfScorePlayerOne.text = String(scorePlayerOne)
        tfScorePlayerTwo.text = String(scorePlayerTwo)
    }
}
