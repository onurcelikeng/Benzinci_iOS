import UIKit

class CampaignDetailsViewController: UIViewController
{
    @IBOutlet weak var webView: UIWebView!
    public static var Title: String?
    public static var Url: String?
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.title = CampaignDetailsViewController.Title!
        self.GetCampaignDetailsRequest()
    }
    
    
    private func GetCampaignDetailsRequest()
    {
        DispatchQueue.global(qos: .userInitiated).async{
            AppDelegate.Client.GetCampaignDetails(url: CampaignDetailsViewController.Url!) { (data) -> Void in
                
                self.webView.loadHTMLString(data, baseURL: nil)
            }
        }
    }
}
