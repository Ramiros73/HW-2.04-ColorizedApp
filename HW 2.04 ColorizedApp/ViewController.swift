//
//  ViewController.swift
//  HW 2.04 ColorizedApp
//
//  Created by Рамиль Хамидуллин on 14.01.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var redlabel: UILabel!
    @IBOutlet var valueOfRed: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var valueOfGreen: UILabel!
    @IBOutlet var blueLabel: UILabel!
    @IBOutlet var valueOfBlue: UILabel!
    @IBOutlet var sliderRed: UISlider!
    @IBOutlet var sliderGreen: UISlider!
    @IBOutlet var sliderBlue: UISlider!
    
    @IBOutlet var mainView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLabels()
        setupSliders()
        
    }

    //MARK: IB Actions
    
    @IBAction func SliderRedAction() {
        mainView.backgroundColor = UIColor(red: CGFloat(sliderRed.value), green: CGFloat(sliderGreen.value), blue: 0.0, alpha: 1.0)
        valueOfRed.text = String(sliderRed.value)
    }
    
    @IBAction func SliderGreenAction() {
        mainView.backgroundColor = UIColor(red: CGFloat(sliderRed.value), green: CGFloat(sliderGreen.value), blue: 0.0, alpha: 1.0)
        valueOfGreen.text = String(sliderGreen.value)
    }
    
    @IBAction func SliderBlueAction() {
        mainView.backgroundColor = UIColor(red: CGFloat(sliderRed.value), green: CGFloat(sliderGreen.value), blue: CGFloat(sliderBlue.value), alpha: 1.0)
        valueOfBlue.text = String(sliderBlue.value)
    }
    
    //MARK: private methods
    
    private func setupLabels() {
        
        mainView.layer.cornerRadius = 10
        // setup of red slider
        valueOfRed.text = ""
        valueOfRed.textColor = UIColor.white
        redlabel.textColor = UIColor.white
        redlabel.font = UIFont.boldSystemFont(ofSize: 10)
        valueOfRed.font = UIFont.boldSystemFont(ofSize: 9)
        
        // setup of green slider
        valueOfGreen.text = ""
        valueOfGreen.textColor = UIColor.white
        greenLabel.textColor = UIColor.white
        greenLabel.font = UIFont.boldSystemFont(ofSize: 10)
        valueOfGreen.font = UIFont.boldSystemFont(ofSize: 9)
        
        // setup of blue slider
        valueOfBlue.text = ""
        valueOfBlue.textColor = UIColor.white
        blueLabel.textColor = UIColor.white
        blueLabel.font = UIFont.boldSystemFont(ofSize: 10)
        valueOfBlue.font = UIFont.boldSystemFont(ofSize: 9)
    }
    
    private func setupSliders() {
        // setup of red slider
        sliderRed.value = 0
        sliderRed.minimumValue =  round(Float(0.0))
        sliderRed.maximumValue = Float(1.0)
        sliderRed.minimumTrackTintColor = .red
        sliderRed.maximumTrackTintColor = .gray
        
        // setup of green slider
        sliderGreen.value = 0
        sliderGreen.minimumValue =  round(Float(0))
        sliderGreen.maximumValue = Float(1)
        sliderGreen.minimumTrackTintColor = .green
        sliderGreen.maximumTrackTintColor = .gray
        
        // setup of blue slider
        sliderBlue.value = 0
        sliderBlue.minimumValue =  round(Float(0))
        sliderBlue.maximumValue = Float(1)
        sliderBlue.minimumTrackTintColor = .blue
        sliderBlue.maximumTrackTintColor = .gray
    }
    
}


