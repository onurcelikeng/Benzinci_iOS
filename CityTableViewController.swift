import UIKit

class CityTableViewController: UITableViewController
{

    var cityArray = [String]();
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.cityArray = ["Adana", "Adıyaman", "Afyon"];
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cityArray.count
    }

}
