
import UIKit

class AthleteFormViewController: UIViewController {

    //MARK:- Properties
    struct PropertyKeys {
        static let unwind = "UnwindToAthleteTable"
    }
    
    var athlete: Athlete?
    
    //MARK:- IBOutlet Properties
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var leagueTextField: UITextField!
    @IBOutlet weak var teamTextField: UITextField!

    
    //MARK:- View Controller LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateView()
    }
    
    func updateView() {
        guard let athlete = athlete else {return}
        
        nameTextField.text = athlete.name
        ageTextField.text = athlete.age
        leagueTextField.text = athlete.league
        teamTextField.text = athlete.team
    }
    
    
    //MARK: IBActions
    @IBAction func saveButtonTapped(_ sender: Any) {
        guard let name = nameTextField.text,
            let age = ageTextField.text,
            let league = leagueTextField.text,
            let team = teamTextField.text else {return}
        
        athlete = Athlete(name: name, age: age, league: league, team: team)
        performSegue(withIdentifier: PropertyKeys.unwind, sender: self)
    }

}
