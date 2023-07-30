import UIKit

class ViewController: UIViewController {

    @IBOutlet var displayScreen: UIView!
    
    @IBOutlet var redValue: UILabel!
    @IBOutlet var greenValue: UILabel!
    @IBOutlet var blueValue: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    private func colorize(_ display: UIView) {
        display.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1.0
        )
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        displayScreen.layer.cornerRadius = 27
    }
    
    @IBAction func addingRedColor() {
        colorize(displayScreen)
        redValue.text = String(format: "%.2f", redSlider.value)
    }
    
    @IBAction func addingGreenColor() {
        colorize(displayScreen)
        greenValue.text = String(format: "%.2f", greenSlider.value)
    }
    
    @IBAction func addingBlueColor() {
        colorize(displayScreen)
        blueValue.text = String(format: "%.2f", blueSlider.value)
    }
    
}
