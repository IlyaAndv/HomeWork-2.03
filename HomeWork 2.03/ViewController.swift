import UIKit

class ViewController: UIViewController {

    @IBOutlet var colorToneDisplay: UIView!
    
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
        colorToneDisplay.layer.cornerRadius = 27
    }
    
    @IBAction func addingRedColor() {
        colorize(colorToneDisplay)
        redValue.text = String(format: "%.2f", redSlider.value)
    }
    
    @IBAction func addingGreenColor() {
        colorize(colorToneDisplay)
        greenValue.text = String(format: "%.2f", greenSlider.value)
    }
    
    @IBAction func addingBlueColor() {
        colorize(colorToneDisplay)
        blueValue.text = String(format: "%.2f", blueSlider.value)
    }
    
}
