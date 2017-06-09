

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var segControl: UISegmentedControl!
    @IBOutlet weak var orangeBG: UIView!
    @IBOutlet weak var blueBG: UIView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

    }
        

    @IBAction func indexChanged(_ sender: UISegmentedControl) {
        
            switch sender.selectedSegmentIndex {
            case 0:
                orangeBG.isHidden = true
                blueBG.isHidden = false
            case 1:
                orangeBG.isHidden = false
                blueBG.isHidden = true
            default:
                break;
            }
    }
    


}

