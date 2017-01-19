//
//  ViewController.swift
//  Emoji Dictionary1
//
//  Created by Naomi Burridge on 1/15/17.
//  Copyright © 2017 Naomi Burridge. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    

    @IBOutlet weak var tableview: UITableView!
    
    var emojis : [Emoji] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableview.dataSource = self
        tableview.delegate = self
        emojis = makeEmojiArray()
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at:indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji )
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! DefinitionViewController
    
        defVC.emoji = sender as! Emoji
   
   //     let anEmoji = sender as! Emoji
   //     defVC.emoji = anEmoji.stringEmoji
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func makeEmojiArray()  -> [Emoji]{
        let emoji1 = Emoji()
        emoji1.stringEmoji = "😍"
        emoji1.birthYear = 2008
        emoji1.category = "Smiley"
        emoji1.definition = "Love"
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "☹️"
        emoji2.birthYear = 2009
        emoji2.category = "Smiley"
        emoji2.definition = "Happy"
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "😡"
        emoji3.birthYear = 2010
        emoji3.category = "Smiley"
        emoji3.definition = "Upset!"
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "😱"
        emoji4.birthYear = 2011
        emoji4.category = "Smiley"
        emoji4.definition = "fear"
        
        let emoji5 = Emoji()
        emoji5.stringEmoji = "😈"
        emoji5.birthYear = 2012
        emoji5.category = "Smiley"
        emoji5.definition = "Devil"
        
        let emoji6 = Emoji()
        emoji6.stringEmoji = "🕺🏻"
        emoji6.birthYear = 2013
        emoji6.category = "Human"
        emoji6.definition = "Dancing"
        
        let emoji7 = Emoji()
        emoji7.stringEmoji = "🤠"
        emoji7.birthYear = 2014
        emoji7.category = "Smiley"
        emoji7.definition = "Howdy"
        
        return[emoji1, emoji2, emoji3, emoji4, emoji5, emoji6, emoji7]
        
    }


}

