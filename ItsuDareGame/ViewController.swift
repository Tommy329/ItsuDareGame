//
//  ViewController.swift
//  ItsuDareGame
//
//  Created by . HIKARU on 2023/12/17.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var itsuLabel : UILabel!
    @IBOutlet var dokodeLabel : UILabel!
    @IBOutlet var daregaLabel : UILabel!
    @IBOutlet var doshitaLabel : UILabel!
    
    @IBOutlet var changeButton : UIButton!
    @IBOutlet var resetBotton : UIButton!
    @IBOutlet var rundomBotton : UIButton!
    
    
    var index : Int = 0
    let itsuArray : [String] = ["今","１０日前","昨日","１００年前"]
    let dokodeArray : [String] = ["山奥で","学校で","海底で","サウジアラジアで"]
    let daregaArray : [String] = ["僕が","総理大臣が","先生が","猿が"]
    let doshitaArray : [String] = ["叫んだ","演説した","怒った","踊った"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        changeButton.layer.cornerRadius = 35
        resetBotton.layer.cornerRadius = 35
        rundomBotton.layer.cornerRadius = 35
        }
    
    @IBAction func change() {
        itsuLabel.text = itsuArray[index]
        dokodeLabel.text = dokodeArray[index]
        daregaLabel.text = daregaArray[index]
        doshitaLabel.text = doshitaArray[index]
        
        
        if index == 3{
            index = 0
        } else {
            index = index+1
            
        }
    }
    
        @IBAction func reset() {
        itsuLabel.text = "----"
        dokodeLabel.text = "----"
        daregaLabel.text = "----"
        doshitaLabel.text = "----"
        
    }
    
    @IBAction func random() {
        let itsuIndex = Int.random(in: 0...3)
        let daregaIndex  = Int.random(in: 0...3)
        let dokodeIndex  = Int.random(in: 0...3)
        let doshitaIndex  = Int.random(in: 0...3)
        
        itsuLabel.text = itsuArray[itsuIndex]
        daregaLabel.text = daregaArray[daregaIndex]
        dokodeLabel.text = dokodeArray[dokodeIndex]
        doshitaLabel.text = doshitaArray[doshitaIndex]
        
        
    }


}

