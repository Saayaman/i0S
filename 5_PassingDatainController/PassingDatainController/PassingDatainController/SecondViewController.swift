
import UIKit

class SecondViewController: UIViewController {
    
    
    var stringPassed = ""
    @IBOutlet weak var secondViewLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        secondViewLabel.text = stringPassed
    }

}
