//
//  ViewController.swift
//  DrawTest
//
//  Created by Fernando Mota on 05/06/2018.
//  Copyright © 2018 Fernando Mota. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var holder: UILabel!
    
    @IBOutlet weak var viewHolder: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let path =  UIBezierPath(roundedRect: CGRect(x: holder.bounds.origin.x, y: holder.bounds.origin.y, width: holder.bounds.width, height: holder.bounds.height-10), byRoundingCorners: [.topLeft, .topRight], cornerRadii: CGSize(width: 10.0, height: 10.0))
        
        path.move(to: CGPoint(x: holder.frame.width-50, y: holder.frame.height-10))
        
        path.addLine(to: CGPoint(x: holder.frame.width-50+6, y: holder.frame.height))
        
        path.addLine(to: CGPoint(x: holder.frame.width-50+12, y: holder.frame.height-10))
        UIColor.red.setFill()
        path.fill()
        let maskLayer = CAShapeLayer()
        maskLayer.fillColor = UIColor.red.cgColor
        maskLayer.path = path.cgPath
        
       holder.layer.mask = maskLayer
        
       
    }
    
    
    @objc func action() {
        print("Coisou!")
    }

    
    @IBAction func diminuir(_ sender: UIButton) {
        holder.layer.sublayers![0].frame.size.width = holder.layer.sublayers![0].frame.size.width - 10
    }
    
        
    


}

