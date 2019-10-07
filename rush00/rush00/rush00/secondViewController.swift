//
//  secondViewController.swift
//  rush00
//
//  Created by Michael Brave on 10/7/19.
//  Copyright © 2019 SwiftPiscine. All rights reserved.
//

import UIKit

class secondViewController: UIViewController {

    @IBOutlet weak var secondLabel: UILabel!
    
    var myString: String? = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        secondLabel.text = myString

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
