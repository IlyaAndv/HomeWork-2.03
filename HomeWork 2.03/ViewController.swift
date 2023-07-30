import UIKit

class ViewController: UIViewController {

    @IBOutlet var colorToneDisplay: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorToneDisplay.layer.cornerRadius = 27
    }
    
}

