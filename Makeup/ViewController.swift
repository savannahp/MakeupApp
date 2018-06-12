//
//  ViewController.swift
//  Makeup
//
//  Created by Savannah Pyle on 5/15/18.
//  Copyright © 2018 Savannah Pyle. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var answerLabel: UILabel!
    
    @IBAction func showAnswer(_ sender: AnyObject) {
        answerLabel.text = elementMap[elementList[currentElementIndex]];
    }
    
    @IBAction func gotoNextElement(_ sender: AnyObject) {
        currentElementIndex += 1;
        if currentElementIndex >= elementList.count {
            currentElementIndex = 0;
        }
        updateElement();
    }
    
    let elementList = ["testmakeup", "testmakeup2", "testmakeup3", "testmakeup4"];
    var elementMap = ["testmakeup": "test descript \n 2nd item",
                      "testmakeup2": "hello",
                      "testmakeup3" : "bye",
                      "testmakeup4" : "felicia"];
   
    var currentElementIndex = 0;
    
    func updateElement () {
        answerLabel.text = "?";
        let elementName = elementList[currentElementIndex];
        let image = UIImage(named: elementName);
        imageView.image = image;
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateElement()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    ///new code
     let elementInfo = ["test", "test1", "test2", "test4"];


}

