
import UIKit

class ViewController: UIViewController {
    


    override func viewDidLoad() {
        
        view.backgroundColor = UIColor.blue
        
        
        // Centering Constraint 1
        
        let newView = UIView()
        newView.backgroundColor = UIColor.red
        newView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(newView)
        
        let horizontalConstraint = NSLayoutConstraint(
            item: newView,
            attribute: NSLayoutAttribute.centerX, // center!
            relatedBy: NSLayoutRelation.equal,
            toItem: view,
            attribute: NSLayoutAttribute.centerX,
            multiplier: 1, constant: 0)
        
        let verticalConstraint = NSLayoutConstraint(
            item: newView,
            attribute: NSLayoutAttribute.centerY,
            relatedBy: NSLayoutRelation.equal,
            toItem: view,
            attribute: NSLayoutAttribute.centerY,
            multiplier: 1, constant: 0)
        
        let widthConstraint = NSLayoutConstraint(
            item: newView,
            attribute: NSLayoutAttribute.width,
            relatedBy: NSLayoutRelation.equal,
            toItem: nil,
            attribute: NSLayoutAttribute.notAnAttribute,
            multiplier: 1,
            constant: 300)
        
        let heightConstraint = NSLayoutConstraint(
            item: newView,
            attribute: NSLayoutAttribute.height,
            relatedBy: NSLayoutRelation.equal,
            toItem: nil,
            attribute: NSLayoutAttribute.notAnAttribute,
            multiplier: 1,
            constant: 300)
        
        NSLayoutConstraint.activate([horizontalConstraint, verticalConstraint, widthConstraint, heightConstraint])
        
        
        
        // Centering Constraint 2
        
        let newView2 = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
        newView2.backgroundColor = UIColor.brown
        newView2.translatesAutoresizingMaskIntoConstraints = true
        view.addSubview(newView2)
        
        newView2.center = CGPoint(x: view.bounds.midX, y: view.bounds.midY)
        newView2.autoresizingMask = [UIViewAutoresizing.flexibleLeftMargin, UIViewAutoresizing.flexibleRightMargin, UIViewAutoresizing.flexibleTopMargin, UIViewAutoresizing.flexibleBottomMargin]

        
        // Centering Constraint 2
        //NSLayoutanchor is added from IOS 9!
        
        let newView3 = UIView()
        newView3.backgroundColor = UIColor.yellow
        newView3.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(newView3)
        
        let horizontalConstraint3 = newView3.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        let verticalConstraint3 = newView3.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        let widthConstraint3 = newView3.widthAnchor.constraint(equalToConstant:  100)
        let heightConstraint3 = newView3.heightAnchor.constraint(equalToConstant: 100)
        NSLayoutConstraint.activate([horizontalConstraint3, verticalConstraint3, widthConstraint3, heightConstraint3])
        
        addViews()

    }
    
    func addViews(){
        
        let orange = CGRect(x: 150, y: 40, width: 200, height: 100)
        let orangeSmall = CGRect(x: 10, y: 10, width: 40, height: 60)
        let orangeSmall2 = CGRect(x: 70, y: 10, width: 100, height: 60)
        
        let myView = UIView(frame:orange)
        myView.translatesAutoresizingMaskIntoConstraints = false

        let myView2 = UIView(frame: orangeSmall)
        let myView3 = UIView(frame: orangeSmall2)
        
        myView.backgroundColor = UIColor.red
        myView2.backgroundColor = UIColor.orange
        myView3.backgroundColor = UIColor.green

        
        view.addSubview(myView)
        myView.addSubview(myView2)
        myView.addSubview(myView3)
        
        
        let const1 = NSLayoutConstraint(
            
            item: myView,
            attribute: NSLayoutAttribute.leading,
            relatedBy: NSLayoutRelation.greaterThanOrEqual,
            toItem: myView,
            attribute: NSLayoutAttribute.leading,
            multiplier: 1, constant: 60)
        
        let const4 = NSLayoutConstraint(
            item: myView,
            attribute: .trailingMargin,
            relatedBy: NSLayoutRelation.greaterThanOrEqual,
            toItem: myView,
            attribute: .trailingMargin,
            multiplier: 1,
            constant: 20)
        
        
        let const3 = NSLayoutConstraint(
            item: myView,
            attribute: NSLayoutAttribute.bottom,
            relatedBy: NSLayoutRelation.equal,
            toItem: view,
            attribute: .bottom,
            multiplier: 1,
            constant: 100)
        

        
        let const2 = NSLayoutConstraint(
            item: myView2,
            attribute: NSLayoutAttribute.top,
            relatedBy: NSLayoutRelation.equal,
            toItem: view,
            attribute: NSLayoutAttribute.top,
            multiplier: 1,
            constant: 20)
        
        NSLayoutConstraint.activate([const1, const2, const3,const4])
        
        
        
        
        let green1 = UIView(frame:CGRect(x: 40, y: 20, width: 200, height: 100))
        let green2 = UIView(frame:CGRect(x: 40, y: 20, width: 40, height: 60))
        let green3 = UIView(frame:CGRect(x: 40, y: 20, width: 100, height: 60))
        
        green1.backgroundColor = UIColor.green
        green2.backgroundColor = UIColor.green
        green3.backgroundColor = UIColor.green
        
        view.addSubview(green1)
        view.addSubview(green2)
        view.addSubview(green3)
        
        
    }
    
    

    

}





