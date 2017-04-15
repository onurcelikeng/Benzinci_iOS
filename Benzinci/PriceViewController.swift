import UIKit
import BetterSegmentedControl

class PriceViewController: UIViewController, UITableViewDataSource, UITableViewDelegate
{
    var segmentedControl = BetterSegmentedControl()
    @IBOutlet var tableView: UITableView!
    
    public static var city: String?
    public static var town: String?
    var benzins: [BenzinModel] = []
    var motorins: [MotorinModel] = []
    var gazyagis: [GazYagiModel] = []
    var fueloils: [FuelOilModel] = []
    var lpgs: [LpgModel] = []
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        self.SegmentControl()
        self.GetBenzinRequest()
        self.title = PriceViewController.city! + ", " + PriceViewController.town!
    }
    
    
    private func GetBenzinRequest()
    {
        DispatchQueue.global(qos: .userInitiated).async{
            self.benzins.removeAll()
            
            let _city = WordHelper.WordFix(value: PriceViewController.city!)
            let _town = WordHelper.WordFix(value: PriceViewController.town!)
            
            AppDelegate.Client.GetBenzin(city: _city, town: _town) { (benzinList) -> Void in
                for item in benzinList { self.benzins.append(item) }
            }
            
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }
    
    private func GetMotorinRequest()
    {
        DispatchQueue.global(qos: .userInitiated).async{
            self.motorins.removeAll()
            
            let _city = WordHelper.WordFix(value: PriceViewController.city!)
            let _town = WordHelper.WordFix(value: PriceViewController.town!)
            
            AppDelegate.Client.GetMotorin(city: _city, town: _town) { (motorinList) -> Void in
                for item in motorinList { self.motorins.append(item) }
            }
            
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }
    
    private func GetGazYagiRequest()
    {
        DispatchQueue.global(qos: .userInitiated).async{
            self.gazyagis.removeAll()
            
            let _city = WordHelper.WordFix(value: PriceViewController.city!)
            let _town = WordHelper.WordFix(value: PriceViewController.town!)
        
            AppDelegate.Client.GetGazYagi(city: _city, town: _town) { (gazyagiList) -> Void in
                for item in gazyagiList { self.gazyagis.append(item) }
            }
            
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }
    
    private func GetFuelOilRequest()
    {
        DispatchQueue.global(qos: .userInitiated).async{
            self.fueloils.removeAll()
            
            let _city = WordHelper.WordFix(value: PriceViewController.city!)
            let _town = WordHelper.WordFix(value: PriceViewController.town!)
            
            AppDelegate.Client.GetFuelOil(city: _city, town: _town) { (fueloilList) -> Void in
                for item in fueloilList { self.fueloils.append(item) }
            }
            
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }
    
    func navigationSegmentedControlValueChanged(_ sender: BetterSegmentedControl)
    {
        if sender.index == 4{
            self.title = PriceViewController.city! + ", " + "Merkez"
        }
        
        else{
            self.title = PriceViewController.city! + ", " + PriceViewController.town!
            
            if sender.index == 0{
                self.GetBenzinRequest()
            }
                
            else if sender.index == 1{
                self.GetMotorinRequest()
            }
            
            else if sender.index == 2{
                self.GetGazYagiRequest()
            }
            
            else if sender.index == 3{
                self.GetFuelOilRequest()
            }
        }
    }
    
    private func SegmentControl()
    {
        segmentedControl.frame = CGRect(x: 0.0, y: 0.0, width: view.bounds.width, height: 35)
        segmentedControl.titles = ["Benzin", "Motorin", "Gaz Yağı", "Fuel Oil", "Lpg"]
        segmentedControl.backgroundColor = UIColor(red:44/255, green:62/255, blue:80/255, alpha:1)
        segmentedControl.titleColor = .white
        segmentedControl.indicatorViewBackgroundColor = UIColor(red:39/255, green:174/255, blue:96/255, alpha:1)
        segmentedControl.selectedTitleColor = .white
        segmentedControl.titleFont = UIFont(name: "HelveticaNeue", size: 14)!
        segmentedControl.selectedTitleFont = UIFont(name: "HelveticaNeue-Medium", size: 14)!
        segmentedControl.addTarget(self, action: #selector(PriceViewController.navigationSegmentedControlValueChanged(_:)), for: .valueChanged)
        try! segmentedControl.setIndex(0)

        view.addSubview(segmentedControl)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        if segmentedControl.index == 0 { return self.benzins.count }
        else if segmentedControl.index == 1 { return self.motorins.count }
        else if segmentedControl.index == 2 { return self.gazyagis.count }
        else if segmentedControl.index == 3 { return self.fueloils.count }
        else { return self.lpgs.count }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        if segmentedControl.index == 0
        {
            let cell = tableView.dequeueReusableCell(withIdentifier: "benzinTableCell", for: indexPath) as! BenzinTableViewCell
            
            cell.Company.image = UIImage(named: self.benzins[indexPath.row].Company!)
            cell.Kursunsuz_95.text = "₺" + self.benzins[indexPath.row].Kursunsuz95!
            cell.Kursunsuz_97_98.text = "₺" + self.benzins[indexPath.row].Kursunsuz9798!
            
            if indexPath.row % 2 == 0{
                cell.Panel.backgroundColor = UIColor(red: 255/255.0, green: 255/255.0, blue: 255/255.0, alpha: 1.0)
            }
                
            else{
                cell.Panel.backgroundColor = UIColor(red: 249/255.0, green: 249/255.0, blue: 249/255.0, alpha: 1.0)
            }
            
            return cell
        }
        
        else if segmentedControl.index == 1
        {
            let cell = tableView.dequeueReusableCell(withIdentifier: "motorinTableCell", for: indexPath) as! MotorinTableViewCell
            
            cell.Company.image = UIImage(named: self.motorins[indexPath.row].Company!)
            cell.Motorin.text = "₺" + self.motorins[indexPath.row].Motorin!
            cell.KatkiliMotorin.text = "₺" + self.motorins[indexPath.row].KatkiliMotorin!
            
            if indexPath.row % 2 == 0{
                cell.Panel.backgroundColor = UIColor(red: 255/255.0, green: 255/255.0, blue: 255/255.0, alpha: 1.0)
            }
                
            else{
                cell.Panel.backgroundColor = UIColor(red: 249/255.0, green: 249/255.0, blue: 249/255.0, alpha: 1.0)
            }
            
            return cell
        }
        
        else if segmentedControl.index == 2
        {
            let cell = tableView.dequeueReusableCell(withIdentifier: "gazyagiTableCell", for: indexPath) as! GazYagiTableViewCell
            
            cell.Company.image = UIImage(named: self.gazyagis[indexPath.row].Company!)
            cell.GazYagi.text = "₺" + self.gazyagis[indexPath.row].GazYagi!
            
            if indexPath.row % 2 == 0{
                cell.Panel.backgroundColor = UIColor(red: 255/255.0, green: 255/255.0, blue: 255/255.0, alpha: 1.0)
            }
                
            else{
                cell.Panel.backgroundColor = UIColor(red: 249/255.0, green: 249/255.0, blue: 249/255.0, alpha: 1.0)
            }
            
            return cell
        }
        
        else
        {
            let cell = tableView.dequeueReusableCell(withIdentifier: "fueloilTableCell", for: indexPath) as! FuelOilTableViewCell
            
            cell.Company.image = UIImage(named: self.fueloils[indexPath.row].Company!)
            cell.KaloriferYakiti.text = "₺" + self.fueloils[indexPath.row].KaloriferYakiti!
            cell.FuelOil.text = "₺" + self.fueloils[indexPath.row].FuelOil!
            cell.YuksekKukurtlu.text = "₺" + self.fueloils[indexPath.row].YuksekKukurtluFuelOil!
            
            if indexPath.row % 2 == 0{
                cell.Panel.backgroundColor = UIColor(red: 255/255.0, green: 255/255.0, blue: 255/255.0, alpha: 1.0)
            }
                
            else{
                cell.Panel.backgroundColor = UIColor(red: 249/255.0, green: 249/255.0, blue: 249/255.0, alpha: 1.0)
            }
            
            return cell
        }
        
    }
}
