//
//  ViewController.swift
//  Lesson 6 dz ColorSquare
//
//  Created by Кирилл Курочкин on 14.09.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var startButton: UIButton!
    
    // let newMyView = UIView()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startButton.setTitle("Start", for: .normal)
        // Do any additional setup after loading the view.
    }
    @IBAction func startButtonPressed(_ sender: UIButton) {
        createRandomSquare()
        
    }
    
    func createRandomSquare(){
        let myView = UIView()
        let randomColor = getRandomColor()
        func getRandomColor() -> UIColor {
            let randomRed = CGFloat.random(in: 0...1)
            let randomGreen = CGFloat.random(in: 0...1)
            let randomBlue = CGFloat.random(in: 0...1)
            
            return UIColor(red: randomRed, green: randomGreen, blue: randomBlue, alpha: 1.0)
        }
        myView.frame = CGRect(x: 50, y: 50, width: 100, height: 100)
        myView.backgroundColor = randomColor
        // view.addSubview(myView)
        
        var xPosition: CGFloat = 0
        var yPosition: CGFloat = 50
        firstRow()
        func firstRow() {
            while yPosition < 600 {
                while xPosition < 350 {
                    // Create a new myView instance
                    let newMyView = UIView(frame: CGRect(x: xPosition, y: yPosition, width: 100, height: 100))
                    let newRandomColor = getRandomColor()
                    newMyView.backgroundColor = newRandomColor
                    view.addSubview(newMyView)
                    xPosition += 100
                    print(yPosition)
                    
                }
                xPosition = 0
                yPosition += 100
                
            }
            
        }
    }
    
    
    
    // Create a new myView instance for each square
    
}
