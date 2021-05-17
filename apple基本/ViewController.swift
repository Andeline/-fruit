//
//  ViewController.swift
//  apple基本
//
//  Created by 蔡佳穎 on 2021/5/16.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var fruitLabel: UILabel!
    @IBOutlet weak var sliderValueLabel: UILabel!
    @IBOutlet weak var shapeSegmentedControl: UISegmentedControl!
    @IBOutlet weak var fruitSegmentedControl: UISegmentedControl!
    
    var content = ""
    var number = 2
    let images = ["🍎", "🍓", "🍑"]
    var imageIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for _ in 1...number {
            for _ in 1...number {
                content += images[imageIndex]
            }
            content += "\n"
        }
        fruitLabel.text = content
        sliderValueLabel.text = "\(number)"
    }
    
    func square() {
        for _ in 1...number {
            for _ in 1...number {
                content += images[imageIndex]
            }
            content += "\n"
        }
        fruitLabel.text = content
    }
    
    func triangle() {
        for i in 1...number {
            for _ in 1...i {
                content += images[imageIndex]
            }
            content += "\n"
        }
        fruitLabel.text = content
    }
    
    func pyramid() {
        for i in (1...number).reversed() {
            for _ in stride(from: i, to: 1, by: -1) {
                content += "🥝"
            }
            for _ in 1...2*number+1-2*i  {
                content += images[imageIndex]
            }
            content += "\n"
        }
        fruitLabel.text = content
    }
    
    func diamond() {
        for i in (1...number).reversed() {
            for _ in stride(from: i, to: 1, by: -1) {
                content += "🥝"
            }
            for _ in 1...2*number+1-2*i  {
                content += images[imageIndex]
            }
            content += "\n"
        }
        for i in 1...number-1 {
            for _ in 1...i {
                content += "🥝"
            }
            for _ in 1...2*number-1-2*i {
                content += images[imageIndex]
            }
            content += "\n"
        }
        fruitLabel.text = content
    }

    @IBAction func changeFruit(_ sender: UISegmentedControl) {
        
        switch sender.selectedSegmentIndex {
        case 0:
            imageIndex = 0
        case 1:
            imageIndex = 1
        case 2:
            imageIndex = 2
        default:
            break
        }
        
        switch shapeSegmentedControl.selectedSegmentIndex {
        case 0:
            content = ""
            square()
        case 1:
            content = ""
            triangle()
        case 2:
            content = ""
            pyramid()
        case 3:
            content = ""
            diamond()
        default:
            break
        }
    }
    
    @IBAction func changeNumber(_ sender: UISlider) {
        sender.value = sender.value.rounded() //使slider拉到整數位置
        number = Int(sender.value)
        sliderValueLabel.text = "\(number)"
        
        switch shapeSegmentedControl.selectedSegmentIndex {
        case 0:
            content = ""
            square()
        case 1:
            content = ""
            triangle()
        case 2:
            content = ""
            pyramid()
        case 3:
            content = ""
            diamond()
        default:
            break
        }
    }
    
    @IBAction func changeShape(_ sender: UISegmentedControl) {
        
        switch sender.selectedSegmentIndex {
        case 0:
            content = ""
            square()
        case 1:
            content = ""
            triangle()
        case 2:
            content = ""
            pyramid()
        case 3:
            content = ""
            diamond()
        default:
            break
        }
    }
}


