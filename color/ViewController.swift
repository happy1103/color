//
//  ViewController.swift
//  color
//
//  Created by User10 on 2018/11/15.
//  Copyright © 2018 ee. All rights reserved.
//

import UIKit



class ViewController: UIViewController {

    @IBOutlet weak var choose: UISegmentedControl!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var alphaSlider: UISlider!
    @IBOutlet weak var redlabel: UILabel!
    @IBOutlet weak var greenlabel: UILabel!
    @IBOutlet weak var bluelabel: UILabel!
    @IBOutlet weak var alphalabel: UILabel!
    @IBOutlet weak var up: UIView!
    @IBOutlet weak var down: UIImageView!
    @IBOutlet weak var wind: UIView!
    @IBOutlet weak var dow: UIView!
    @IBOutlet weak var randowbutton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    var name = "二樓"
    
    @IBAction func change(_ sender: UISegmentedControl) {
        name = sender.titleForSegment(at: sender.selectedSegmentIndex)!
    }
    
    @IBAction func sliderchange(_ sender: UISlider) {
        if sender == redSlider || sender == blueSlider || sender == greenSlider || sender == alphaSlider {
            redlabel.text = String(format:"%.2f",(redSlider.value))
            greenlabel.text = String(format:"%.2f",(greenSlider.value))
            bluelabel.text = String(format:"%.2f",(blueSlider.value))
            alphalabel.text = String(format:"%.2f",(alphaSlider.value))
        }
        if name == "二樓"
        {
            up.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: CGFloat(alphaSlider.value))
        }
        if name == "一樓"
        {
            down.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: CGFloat(alphaSlider.value))
        }
        if name == "窗戶"
        {
            wind.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: CGFloat(alphaSlider.value))
            dow.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: CGFloat(alphaSlider.value))
            
        }
    }
    @IBAction func randowcolor(_ sender: Any) {
        up.backgroundColor = UIColor(red: CGFloat(Double.random(in: 0.0...1.0)), green: CGFloat(Double.random(in: 0.0...1.0)), blue: CGFloat(Double.random(in: 0.0...1.0)), alpha: CGFloat(Double.random(in: 0.0...1.0)))
        down.backgroundColor = UIColor(red: CGFloat(Double.random(in: 0.0...1.0)), green: CGFloat(Double.random(in: 0.0...1.0)), blue: CGFloat(Double.random(in: 0.0...1.0)), alpha: CGFloat(Double.random(in: 0.0...1.0)))
        wind.backgroundColor = UIColor(red: CGFloat(Double.random(in: 0.0...1.0)), green: CGFloat(Double.random(in: 0.0...1.0)), blue: CGFloat(Double.random(in: 0.0...1.0)), alpha: CGFloat(Double.random(in: 0.0...1.0)))
        dow.backgroundColor = UIColor(red: CGFloat(Double.random(in: 0.0...1.0)), green: CGFloat(Double.random(in: 0.0...1.0)), blue: CGFloat(Double.random(in: 0.0...1.0)), alpha: CGFloat(Double.random(in: 0.0...1.0)))
    }
    
}

