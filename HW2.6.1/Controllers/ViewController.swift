import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var colourfulView: UIView!
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var redNumberLabel: UILabel!
    @IBOutlet weak var redSlider: UISlider!
    
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var greenNumberLabel: UILabel!
    @IBOutlet weak var greenSlider: UISlider!
    
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var blueNumberLabel: UILabel!
    @IBOutlet weak var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colourfulView.layer.cornerRadius = 20
        
        (redSlider.value, redNumberLabel.text) = startAppWithRandomValues(sliderValue: redSlider, numberValue: redLabel)
        (greenSlider.value, greenNumberLabel.text) = startAppWithRandomValues(sliderValue: greenSlider, numberValue: greenLabel)
        (blueSlider.value, blueNumberLabel.text) = startAppWithRandomValues(sliderValue: blueSlider, numberValue: blueLabel)
        
        colourfulView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1.0)
        
        redSlider.minimumTrackTintColor = .red
        redSlider.thumbTintColor = .red
        greenSlider.minimumTrackTintColor = .green
        greenSlider.thumbTintColor = .green
        blueSlider.minimumTrackTintColor = .blue
        blueSlider.thumbTintColor = .blue
    }

    @IBAction func redSliderMoved() {
        redNumberLabel.text = changeColour(redValue: CGFloat(redSlider.value), greenValue: CGFloat(greenSlider.value), blueValue: CGFloat(blueSlider.value), sliderValue: redSlider)
    }
    
    @IBAction func greenSliderMoved() {
        greenNumberLabel.text = changeColour(redValue: CGFloat(redSlider.value), greenValue: CGFloat(greenSlider.value), blueValue: CGFloat(blueSlider.value), sliderValue: greenSlider)
    }
    
    @IBAction func blueSliderMoved() {
        blueNumberLabel.text = changeColour(redValue: CGFloat(redSlider.value), greenValue: CGFloat(greenSlider.value), blueValue: CGFloat(blueSlider.value), sliderValue: blueSlider)
    }
    
    func changeColour(redValue: CGFloat, greenValue: CGFloat, blueValue: CGFloat, sliderValue: UISlider) -> String {
        colourfulView.backgroundColor = UIColor(red: CGFloat(redValue), green: CGFloat(greenValue), blue: CGFloat(blueValue), alpha: 1.0)
        
        return String(round(sliderValue.value * 100) / 100)
    }
    
    func startAppWithRandomValues(sliderValue: UISlider, numberValue: UILabel) -> (Float, String) {
        let resultSliderValue = round(Float.random(in: 0.0...1.0) * 100) / 100
        
        return (resultSliderValue, String(resultSliderValue))
    }
}

