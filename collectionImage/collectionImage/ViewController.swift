//
//  ViewController.swift
//  collectionImage
//
//  Created by Sohila on 24/10/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var img: UIImageView!
    
    
    @IBOutlet weak var nexxt: UIButton!
    @IBOutlet weak var descroption: UILabel!
    @IBOutlet weak var previous: UIButton!
    var index = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        getData(index: index)
//        img.image = UIImage(named: "Luxor")
//        descroption.text =
    }
    var getdata : [data] = [
    data(img: "luxor" , description: "Luxor is the capital of the Pharaohs and now it is the city of palaces. You will see in the city the temple doors of the past, the most famous of which are the Luxor Temple and the Karnak Temple, which are about two kilometers to the north ,In the northwest of Luxor, you will discover one of the most important archaeological sites in Egypt, the Valley of the Kings, which is a cemetery for many pharaohs and was particularly known because of Tutankhamun’s burial chamber.") ,
    data(img: "redsea" , description: "Red Sea is the capital of the Pharaohs and now it is the city of palaces. You will see in the city the temple doors of the past, the most famous of which are the Luxor Temple and the Karnak Temple, which are about two kilometers to the north ,In the northwest of Luxor, you will discover one of the most important archaeological sites in Egypt, the Valley of the Kings, which is a cemetery for many pharaohs and was particularly known because of Tutankhamun’s burial chamber."),
    data(img: "pyramiads" , description: "pyramids is the capital of the Pharaohs and now it is the city of palaces. You will see in the city the temple doors of the past, the most famous of which are the Luxor Temple and the Karnak Temple, which are about two kilometers to the north ,In the northwest of Luxor, you will discover one of the most important archaeological sites in Egypt, the Valley of the Kings, which is a cemetery for many pharaohs and was particularly known because of Tutankhamun’s burial chamber.")
    ,data(img: "nile" , description: "Nile is the capital of the Pharaohs and now it is the city of palaces. You will see in the city the temple doors of the past, the most famous of which are the Luxor Temple and the Karnak Temple, which are about two kilometers to the north ,In the northwest of Luxor, you will discover one of the most important archaeological sites in Egypt, the Valley of the Kings, which is a cemetery for many pharaohs and was particularly known because of Tutankhamun’s burial chamber.")]
    
 
    func getData(index : Int){
        img.image = UIImage(named: getdata[index].img)
        descroption.text = getdata[index].description
        
        
    }

    @IBAction func getnext(_ sender: Any) {
        index = (index + 1) % getdata.count
        getData(index : index)
    }
    
    
    @IBAction func getprevious(_ sender: Any) {
        index = (index + 1 + getdata.count) % getdata.count
        getData(index : index)
    }
}

