//
//  ViewController.swift
//  homework13
//
//  Created by vano Kvakhadze on 05.04.24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var photo: UIImageView!
    
    @IBOutlet weak var secondView: UIView!
    
    @IBOutlet weak var nameOfCoffe: UILabel!
    
    @IBOutlet weak var rating: UILabel!
    
    @IBOutlet weak var priceOfCoffe: UILabel!

    @IBOutlet weak var isLiked: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        photo.layer.cornerRadius = 16
       
        secondView.layer.cornerRadius = 24
        secondView.layer.shadowRadius = 1
        secondView.layer.shadowOpacity  = 0.1
        
       // letsMakeCoffe() uncomment to make coffee :D 
    }
    
    struct Coffe {
        var name: String
        var isLIkde: Bool
        var rating: Double
        var price: Double
        
    }
    
    var coffe1 = Coffe(name: "ლატე", isLIkde: true, rating: 4.3, price: 3.55)

    func letsMakeCoffe(){
        nameOfCoffe.text = coffe1.name
        rating.text = String(coffe1.rating)
        priceOfCoffe.text = String("₾ \(coffe1.price)")
        
        if coffe1.isLIkde == true{
            isLiked.tintColor = .red
        }
    }
}

