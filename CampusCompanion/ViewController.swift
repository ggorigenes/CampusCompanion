import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var roleSegmentedControl: UISegmentedControl!
    @IBOutlet weak var notificationSwitch: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBOutlet weak var eventDatePicker: UIDatePicker!
    
    @IBOutlet weak var guestStepper: UIStepper!
    @IBAction func getStarted(_ sender: Any) {
        subtitleLabel.text = "Let's get started!"
    }

 
    @IBAction func exploreButtonTapped(_ sender: UIButton) {
        nameTextField.resignFirstResponder()
        performSegue(withIdentifier: "ShowDetailSegue", sender: self)
    }

    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "ShowDetailSegue",
              let destination = segue.destination as? DetailViewController else {
            return
        }
        
        let enteredName = nameTextField.text ?? ""
        destination.studentName = enteredName.isEmpty ? "Student" : enteredName
        destination.notificationsEnabled = notificationSwitch.isOn
        destination.selectedRole = roleSegmentedControl.selectedSegmentIndex == 0 ? "Student" : "Faculty"
        destination.eventDate = eventDatePicker.date
        destination.guestCount = Int(guestStepper.value)
    }
}

