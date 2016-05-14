//
//  ViewController.swift
//  TDDFirstDemo
//
//  Created by Michael Vilabrera on 5/6/16.
//  Copyright © 2016 Michael Vilabrera. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfVowelsInString(string: String) -> Int {
        let vowels: [Character] = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"];
        
        return string.characters.reduce(0) { $0 + (vowels.contains($1) ? 1 : 0) }
    }
    
    func makeHeadline(string: String) -> String {
        // 1
        let words = string.componentsSeparatedByString(" ")
        // 2
        
        //
        // var parameters are deprecated and will not be used in Swift 3
        // how to satisfy the need for a mutable parameter? (jibestream)
        //
        
        let headline = words.map { (var word) -> String in let firstCharacter = word.removeAtIndex(word.startIndex)
            return "\(String(firstCharacter).uppercaseString)\(word)"
        }.joinWithSeparator(" ")
        
        return headline
    }
}

