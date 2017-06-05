
import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var drawView: DrawView!

    @IBOutlet weak var colorBtn: UIBarButtonItem!
    
    
    var colors : [UIColor] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //make drawable view
        
        
        
        
        //color
        for i in stride(from: 0, to: 255, by: 25){
            for j in stride(from: 0, to: 255, by: 25){
                for k in stride(from: 0, to: 255, by: 25){
                    
                    let c = UIColor(red: CGFloat(i)/255, green: CGFloat(j)/255, blue: CGFloat(k)/255, alpha: 1)
                    colors.append(c)
                    
                }
            }
        }
        
        
    }
    
    
    @IBAction func clearAction(_ sender: UIBarButtonItem) {
        
        drawView.clear()
    }

    
    @IBAction func undoAction(_ sender: UIBarButtonItem) {
        
        drawView.undo()
    }
    
    
    @IBAction func changeStrokeSize(_ sender: UISlider) {
        drawView.brushWidth = CGFloat(sender.value)
    }
    
    
    @IBAction func paintAction(_ sender: UIBarButtonItem) {
        UIView.animate(withDuration: 0.3){
            self.view.layoutIfNeeded()
        }
    }
    
    

}

