//
//  ViewController.swift
//  QUIZIOSLULUS
//
//  Created by Muhammad Hilmy Fauzi on 1/19/18.
//  Copyright © 2018 Hilmy Corp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var etMTK: UITextField!
    @IBOutlet weak var etIndo: UITextField!
    @IBOutlet weak var etKomputer: UITextField!
    @IBOutlet weak var etAgama: UITextField!
    @IBOutlet weak var etQuran: UITextField!
    @IBOutlet weak var lblHasil: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func btnCek(_ sender: Any) {
        var mtk : Int? = Int(etMTK.text!)
        var indo : Int? = Int(etIndo.text!)
        var komputer : Int? = Int(etKomputer.text!)
        var agama : Int? = Int(etAgama.text!)
        var quran : Int? = Int(etQuran.text!)

        let rata : Int = Int((mtk! + indo! + komputer! + agama! + quran!) / 5)
        
        if (rata < 70) {
            lblHasil.text = "Your Average is \(rata), and You Not Pass"
        }else{
            lblHasil.text = "Your Average is \(rata), and You Pass"
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

