//
//  ViewController.swift
//  practice4-constraint
//
//  Created by ayako_sayama on 2017-05-26.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var greenBox:  UIView!
    var purpleBox: UIView!
    var orangeBox: UIView!
    
    var yellow1Box: UIView!
    var yellow2Box: UIView!
    
    var blue1: UIView!
    var blue2: UIView!
    var blue3: UIView!
    
//    var toggleButton = UIButton(type:.system)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Viewの定義
        
        //constraint
        self.greenBox = self.makeView(color: .green)
        view.addSubview(greenBox)
        
        purpleBox = makeView(color: .purple)
        greenBox.addSubview(purpleBox)
        
        //サイズ変更なし
        orangeBox = makeView(color: .orange)
        greenBox.addSubview(orangeBox)
        
        yellow1Box = makeView(color: .yellow)
        yellow2Box = makeView(color: .yellow)
        orangeBox.addSubview(yellow1Box)
        orangeBox.addSubview(yellow2Box)
        
        //Constraint変更あり
        blue1 = makeView(color: .blue)
        blue2 = makeView(color: .blue)
        blue3 = makeView(color: .blue)
        greenBox.addSubview(blue1)
        greenBox.addSubview(blue2)
        greenBox.addSubview(blue3)
        
        
        //参照しないので、initしなくても良い
        greenBox.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        greenBox.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0).isActive = true

        greenBox.widthAnchor.constraint(equalTo:view.widthAnchor, multiplier:0.9).isActive = true
        greenBox.heightAnchor.constraint(equalTo:view.heightAnchor, multiplier:0.9).isActive = true
        

        //Constraintの定義
        makeOrangeConstraint()
        makePurpleConstraint()
        makeYellowConstraint()
        makeBlueConstraint()
        
    }

    func makeView(color:UIColor) -> UIView {
        let aview = UIView(frame: .zero)
        aview.backgroundColor = color
        aview.translatesAutoresizingMaskIntoConstraints = false
        return aview
    }
    
    func makeOrangeConstraint(){
        orangeBox.trailingAnchor.constraint(equalTo: greenBox.layoutMarginsGuide.trailingAnchor, constant: -20).isActive = true
        orangeBox.topAnchor.constraint(equalTo: greenBox.layoutMarginsGuide.topAnchor, constant: 20).isActive = true
        orangeBox.widthAnchor.constraint(equalToConstant: 140).isActive = true
        orangeBox.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }

    func makePurpleConstraint(){
        purpleBox.trailingAnchor.constraint(equalTo: orangeBox.trailingAnchor).isActive = true
        purpleBox.bottomAnchor.constraint(equalTo: greenBox.bottomAnchor, constant: -20).isActive = true
        purpleBox.widthAnchor.constraint(equalTo: greenBox.widthAnchor, multiplier: 0.6).isActive = true
        purpleBox.heightAnchor.constraint(equalToConstant: 30).isActive = true
    }
    
    func makeYellowConstraint(){
        yellow1Box.topAnchor.constraint(equalTo: orangeBox.layoutMarginsGuide.topAnchor).isActive = true
        yellow1Box.leadingAnchor.constraint(equalTo: orangeBox.leadingAnchor, constant: 10).isActive = true
        yellow1Box.widthAnchor.constraint(equalTo: orangeBox.widthAnchor, multiplier: 0.6).isActive = true
        yellow1Box.bottomAnchor.constraint(equalTo: orangeBox.layoutMarginsGuide.bottomAnchor).isActive = true
        
        yellow2Box.leadingAnchor.constraint(equalTo: yellow1Box.trailingAnchor, constant: 5).isActive = true
        yellow2Box.topAnchor.constraint(equalTo: yellow1Box.topAnchor).isActive = true
        yellow2Box.bottomAnchor.constraint(equalTo: yellow1Box.bottomAnchor).isActive = true
        yellow2Box.trailingAnchor.constraint(equalTo: orangeBox.trailingAnchor, constant: -10).isActive = true

    }
    
    func makeBlueConstraint(){
        
       // let blueFormat = "|[blue1]-10-[blue2]-10-[blue3]|"
        //centralize
//        let blueConstraints = NSLayoutConstraint.constraints(withVisualFormat: blueFormat, options: .alignAllCenterX, metrics: nil, views: ["blue1":blue1,"blue2":blue2,"blue3":blue3])
//        NSLayoutConstraint.activate(blueConstraints)
        
    
        
//        let blueView:UIView = [blue1,blue2,blue3]
//        for blue in blueView{
//            blue.widthAnchor
//        }
        
        blue1.centerXAnchor.constraint(equalTo: greenBox.centerXAnchor).isActive = true
        blue2.centerXAnchor.constraint(equalTo: blue1.centerXAnchor).isActive = true
        blue3.centerXAnchor.constraint(equalTo: blue1.centerXAnchor).isActive = true
        
        blue1.topAnchor.constraint(equalTo: greenBox.topAnchor, constant: 60).isActive = true
        
        blue2.centerYAnchor.constraint(equalTo: greenBox.centerYAnchor).isActive = true

        blue3.bottomAnchor.constraint(equalTo: greenBox.bottomAnchor, constant: -60).isActive = true

        
        blue1.widthAnchor.constraint(equalToConstant: 60).isActive = true
        blue2.widthAnchor.constraint(equalTo: blue1.widthAnchor).isActive = true
        blue3.widthAnchor.constraint(equalTo: blue1.widthAnchor).isActive = true
        
        blue1.heightAnchor.constraint(equalToConstant: 60).isActive = true
        blue2.heightAnchor.constraint(equalTo: blue1.heightAnchor).isActive = true
        blue3.heightAnchor.constraint(equalTo: blue1.heightAnchor).isActive = true
        
    }
 
    }

