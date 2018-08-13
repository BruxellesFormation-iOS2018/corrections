import UIKit

class ViewController: UIViewController {

    var lightOn = true{
        didSet{
            self.updateUI()
        }
    }
    
    @IBOutlet weak var lightButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        lightOn = !lightOn
    }
    
    func updateUI() {
        view.backgroundColor = lightOn ? .white : .black
    }
}

