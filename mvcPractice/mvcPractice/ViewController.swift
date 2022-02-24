//
//  ViewController.swift
//  mvcPractice
//
//  Created by macbook on 24/02/22.
//

import UIKit

class ViewController: UIViewController {
    
    let person = Person(firstName: "Jon", lastName: "Doe", gender: "Male", age: 32, weight: 79, height: 179)

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        let myView = ExampleView(frame: CGRect(x: 0, y: 0, width: 250, height: 250))
        myView.center = view.center
        myView.configure(with: "\(person.firstName) \(person.lastName)")
        view.addSubview(myView)
    }

}

struct Person{
    let firstName : String
    let lastName : String
    let gender : String
    let age : Int
    let weight : Double
    let height : Double
}




