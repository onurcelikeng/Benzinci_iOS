import UIKit

class PriceViewController: UIViewController
{
    public static var city: String?
    public static var town: String?
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        self.title = PriceViewController.city! + ", " + PriceViewController.town!
    }
    
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    
}
