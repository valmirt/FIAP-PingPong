//
//  MainViewController.swift
//  PingPong
//
//  Created by Valmir Junior on 25/08/20.
//  Copyright © 2020 Valmir Junior. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var textFieldPlayerOne: UITextField!
    @IBOutlet weak var textFieldPlayerTwo: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Tela 1: viewDidLoad")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("Tela 1: viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("Tela 1: viewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("Tela 1: viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("Tela 1: viewDidDisappear")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let matchViewController = segue.destination as? MatchViewController {
            matchViewController.playerOne = textFieldPlayerOne.text ?? "Jogador 1"
            matchViewController.playerTwo = textFieldPlayerTwo.text ?? "Jogador 2"
        }
    }
}

