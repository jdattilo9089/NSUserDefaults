import UIKit
import CoreData

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var enterNumber: UITextField!
    @IBOutlet weak var label: UILabel!
    
    let managedObjectContext = (UIApplication.sharedApplication().delegate as! AppDelegate)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = NSUserDefaults.standardUserDefaults().stringForKey("name")
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func saveButton(sender: UIButton) {
        
        var name = enterNumber.text
        label.text = name
        
        NSUserDefaults.standardUserDefaults().setValue(name, forKey: "name")
    }
}