//
//  DefinitionViewController.swift
//  Emoji Dictionary1
//
//  Created by Naomi Burridge on 1/16/17.
//  Copyright © 2017 Naomi Burridge. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    @IBOutlet weak var definitionLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    var emoji = "No Emoji"

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emojiLabel.text = emoji
        
        
        if emoji == "🕺🏻"{definitionLabel.text = "Dancer!"}
        
        if emoji == "🤠"{definitionLabel.text = "Howdy!"}
        
        if emoji == "😱"{definitionLabel.text = "Noooo!"}
        
        if emoji == "😍"{definitionLabel.text = "Lovely!"}
        
        if emoji == "😈"{definitionLabel.text = "Mad!"}
        
        if emoji == "☹️"{definitionLabel.text = "xxx!"}
        
        if emoji == "😡"{definitionLabel.text = "rrrrr!"}
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
