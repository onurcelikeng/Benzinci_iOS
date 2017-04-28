import UIKit

class CampaignViewController : UIViewController, UITableViewDataSource, UITableViewDelegate
{
    @IBOutlet weak var tableView: UITableView!
    var campaigns: [CampaignModel] = []
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.GetCampaignRequest()
    }
    
    
    private func GetCampaignRequest()
    {
        DispatchQueue.global(qos: .userInitiated).async{
            self.campaigns.removeAll()
            
            AppDelegate.Client.GetCampaign() { (campaignList) -> Void in
                
                for item in campaignList { self.campaigns.append(item) }
            }
            
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return self.campaigns.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "campaignTableCell", for: indexPath) as! CampaignTableViewCell
        
        cell.Title.text = self.campaigns[indexPath.row].Title
        cell.Date.text = self.campaigns[indexPath.row].Date
        cell.Content.text = self.campaigns[indexPath.row].Content

        let imageURL = NSURL(string: self.campaigns[indexPath.row].Image!)
        if imageURL != nil {
            let data = NSData(contentsOf: (imageURL as URL?)!)
            cell.Logo.image = UIImage(data: data! as Data)
        }
        
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        let selectedItem = campaigns[indexPath.row]
        CampaignDetailsViewController.Title = selectedItem.Title
        CampaignDetailsViewController.Url = selectedItem.Url
        performSegue(withIdentifier: "oneSegue", sender: nil)
    
        tableView.deselectRow(at: tableView.indexPathForSelectedRow!, animated: true)
    }
}
