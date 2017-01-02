import UIKit

class TownViewController: UIViewController, UITableViewDataSource, UITableViewDelegate
{
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
               
        tableView.dataSource = self
        tableView.delegate = self
        self.title = PriceViewController.city
    }
    
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return PositionModel.townList(city: PriceViewController.city!).count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = UITableViewCell()
        cell.textLabel?.text = PositionModel.townList(city: PriceViewController.city!)[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let selectedItem = PositionModel.townList(city: PriceViewController.city!)[indexPath.row]
        PriceViewController.town = selectedItem
        performSegue(withIdentifier: "oneSegue", sender: nil)
    }
    
}
