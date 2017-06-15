
import UIKit

class DetailsViewController: UIViewController, UIScrollViewDelegate {

    
    @IBOutlet weak var secondVC: UIScrollView!
    @IBOutlet weak var imageView: UIImageView!
    
    var senderTag:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        secondVC.delegate = self
        
        print("sea\(String(describing: senderTag))")
        
        self.imageView.image = UIImage(named: "sea\(String(describing: senderTag + 1))")
        secondVC.setZoomScale(1,animated:false)
        
        secondVC.minimumZoomScale = 1
        secondVC.maximumZoomScale = 3
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return imageView
    }

}
