import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    
    var studentName: String = ""
    var notificationsEnabled: Bool = false
    var selectedRole: String = ""
    var eventDate: Date = Date()
    var guestCount: Int = 0


    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Campus Events"
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .none
        let formattedDate = dateFormatter.string(from: eventDate)
        
        let notificationStatus = notificationsEnabled ? "on" : "off"
        
        messageLabel.text = "Welcome, \(studentName)! (\(selectedRole)) Notifications: \(notificationStatus).\n\nEvent Date: \(formattedDate)\nGuests: \(guestCount)"
    }
}
