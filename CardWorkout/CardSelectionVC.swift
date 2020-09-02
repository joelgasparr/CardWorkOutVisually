//
//  CardSelectionVC.swift
//  CardWorkout
//
//  Created by Joel Gaspar on 14/08/20.
//  Copyright © 2020 Joel Gaspar. All rights reserved.
//

import UIKit

class CardSelectionVC: UIViewController {

    @IBOutlet var cardImageView: UIImageView!
    
    @IBOutlet var buttons: [UIButton]!
    var cards: [UIImage] = Deck.allValues
    
    var timer: Timer!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startTimer()
        for button in buttons {
            button.layer.cornerRadius = 8
        }

    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
    
    func startTimer() {
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(showRandomImage), userInfo: nil, repeats: true)
    }
    
    
    @objc func showRandomImage() {
        cardImageView.image = cards.randomElement() ?? UIImage(named: "AS")
    }
    
    @IBAction func stopBottonTapped(_ sender: UIButton) {
        timer.invalidate()
    }
    
    @IBAction func restarButtonTapped(_ sender: UIButton) {
        timer.invalidate()
        startTimer()
    }
    
}
