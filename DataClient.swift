import Foundation
import SwiftSoup
import MapKit

public class DataClient
{
    private let CampaignApi = "http://kampanyabul.org/category/akaryakit/"
    private let BenzinApi = "http://benzinal.com/";
    private let LpgApi = "http://lpgal.com/"
    
    
    public func GetBenzin(city: String, town: String, completionHandler: @escaping ([BenzinModel]) -> Void)
    {
        UIApplication.shared.isNetworkActivityIndicatorVisible = true

        var list: [BenzinModel] = []
        let url = NSURL(string: BenzinApi + city + "-" + town + "-benzin-fiyatlari")
        
        do
        {
            let html = try NSString(contentsOf: url! as URL, encoding: String.Encoding.utf8.rawValue)
            
            let document: Document = try SwiftSoup.parse(html as String)
            if try document.select("tbody").size() > 0
            {
                let table: Element = try! document.select("tbody").get(0)
                
                for i in 1...(table.childNodeSize() - 2)
                {
                    let model = BenzinModel()
                    
                    model.Company = try! table.childNode(i).childNode(1).childNode(0).attr("alt")
                    model.Kursunsuz95 = try! table.childNode(i).childNode(2).childNode(0).toString()
                    model.Kursunsuz9798 = try! table.childNode(i).childNode(3).childNode(0).toString()

                    list.append(model)
                }
                
                completionHandler(list)
            }
        }
        
        catch{}
        
        UIApplication.shared.isNetworkActivityIndicatorVisible = false
    }
    
    public func GetMotorin(city: String, town: String, completionHandler: @escaping ([MotorinModel]) -> Void)
    {
        UIApplication.shared.isNetworkActivityIndicatorVisible = true

        var list: [MotorinModel] = []
        let url = NSURL(string: BenzinApi + city + "-" + town + "-motorin-fiyatlari")
        
        do
        {
            let html = try NSString(contentsOf: url! as URL, encoding: String.Encoding.utf8.rawValue)
            
            let document: Document = try SwiftSoup.parse(html as String)
            if try document.select("tbody").size() > 0
            {
                let table: Element = try! document.select("tbody").get(0)
                for i in 1...(table.childNodeSize() - 2)
                {
                    let model = MotorinModel()
                    
                    model.Company = try! table.childNode(i).childNode(1).childNode(0).attr("alt")
                    model.Motorin = try! table.childNode(i).childNode(2).childNode(0).toString()
                    model.KatkiliMotorin = try! table.childNode(i).childNode(3).childNode(0).toString()
                    model.Logo = LogoHelper.setMapPin(value: model.Company!)
                    
                    list.append(model)
                }
                
                completionHandler(list)
            }
        }
        
        catch{}
        
        UIApplication.shared.isNetworkActivityIndicatorVisible = false
    }
    
    public func GetGazYagi(city: String, town: String, completionHandler: @escaping ([GazYagiModel]) -> Void)
    {
        UIApplication.shared.isNetworkActivityIndicatorVisible = true

        var list: [GazYagiModel] = []
        let url = NSURL(string: BenzinApi + city + "-" + town + "-gazyagi-fiyatlari")
        
        do
        {
            let html = try NSString(contentsOf: url! as URL, encoding: String.Encoding.utf8.rawValue)
            
            let document: Document = try SwiftSoup.parse(html as String)
            if try document.select("tbody").size() > 0
            {
                let table: Element = try! document.select("tbody").get(0)
                for i in 1...(table.childNodeSize() - 2)
                {
                    let model = GazYagiModel()
                    
                    model.Company = try! table.childNode(i).childNode(1).childNode(0).attr("alt");
                    model.GazYagi = try! table.childNode(i).childNode(2).childNode(0).toString();
                    model.Logo = LogoHelper.setMapPin(value: model.Company!);

                    list.append(model)
                }
                
                completionHandler(list)
            }
        }

        catch{}
        
        UIApplication.shared.isNetworkActivityIndicatorVisible = false
    }
    
    public func GetFuelOil(city: String, town: String, completionHandler: @escaping ([FuelOilModel]) -> Void)
    {
        UIApplication.shared.isNetworkActivityIndicatorVisible = true

        var list: [FuelOilModel] = []
        let url = NSURL(string: BenzinApi + city + "-" + town + "-fueloil-fiyatlari")
        
        do
        {
            let html = try NSString(contentsOf: url! as URL, encoding: String.Encoding.utf8.rawValue)
            
            let document: Document = try SwiftSoup.parse(html as String)
            if try document.select("tbody").size() > 0
            {
                let table: Element = try! document.select("tbody").get(0)
                for i in 1...(table.childNodeSize() - 2)
                {
                    let model = FuelOilModel()
                    
                    model.Company = try! table.childNode(i).childNode(1).childNode(0).attr("alt");
                    model.FuelOil = try! table.childNode(i).childNode(2).childNode(0).toString();
                    model.KaloriferYakiti = try! table.childNode(i).childNode(3).childNode(0).toString();
                    model.YuksekKukurtluFuelOil = try! table.childNode(i).childNode(4).childNode(0).toString();
                    model.Logo = LogoHelper.setMapPin(value: model.Company!);
                    
                    list.append(model)
                }
                
                completionHandler(list)
            }
        }
            
        catch{}
        
        UIApplication.shared.isNetworkActivityIndicatorVisible = false
    }

    public func GetLpg(city: String, completionHandler: @escaping ([LpgModel]) -> Void)
    {
        UIApplication.shared.isNetworkActivityIndicatorVisible = true

        var list: [LpgModel] = []
        let url = NSURL(string: LpgApi + city + "-lpg-fiyatlari")
        
        do
        {
            let html = try NSString(contentsOf: url! as URL, encoding: String.Encoding.utf8.rawValue)
            
            let document: Document = try SwiftSoup.parse(html as String)
            if try document.select("tbody").size() > 0
            {
                let table: Element = try! document.select("tbody").get(0)
                for i in 1...(table.childNodeSize() - 2)
                {
                    let model = LpgModel()
                    
                    model.Logo = try! "http://lpgal.com" + table.childNode(i).childNode(1).childNode(0).attr("src")
                    model.Lpg = try! table.childNode(i).childNode(2).childNode(0).childNode(0).toString()
                    
                    list.append(model)
                }
                
                completionHandler(list)
            }
        }
            
        catch{}
        
        UIApplication.shared.isNetworkActivityIndicatorVisible = false
    }
    
    public func GetCampaign(completionHandler: @escaping ([CampaignModel]) -> Void)
    {
        UIApplication.shared.isNetworkActivityIndicatorVisible = true

        var list: [CampaignModel] = []
        let url = NSURL(string: CampaignApi)
        
        do{
            let html = try NSString(contentsOf: url! as URL, encoding: String.Encoding.utf8.rawValue)
            
            let document: Document = try SwiftSoup.parse(html as String)
            if try document.select("div").size() > 0
            {
                let table: Element = try! document.getElementsByClass("items").get(0)
                for i in 1...(table.childNodeSize() - 2)
                {
                    let model = CampaignModel()
                    
                    model.Url = try! table.childNode(i).childNode(1).childNode(1).childNode(1).absUrl("href");
                    model.Image = try! table.childNode(i).childNode(1).childNode(1).childNode(1).childNode(1).absUrl("src");
                    model.Title = try! table.childNode(i).childNode(1).childNode(3).childNode(1).childNode(1).childNode(0).toString();
                    model.Date = try! table.childNode(i).childNode(1).childNode(3).childNode(3).childNode(0).toString().replacingOccurrences(of: "\n", with: "").replacingOccurrences(of: "-", with: "");
                    model.Content = try! table.childNode(i).childNode(1).childNode(3).childNode(5).childNode(0).toString().replacingOccurrences(of: "\n ", with: "");
                    
                    list.append(model)
                }
            }
            
            completionHandler(list)
        }
        
        catch{}
        
        UIApplication.shared.isNetworkActivityIndicatorVisible = false
    }
    
    public func GetCampaignDetails(url: String, completionHandler: @escaping (String) -> Void)
    {
        UIApplication.shared.isNetworkActivityIndicatorVisible = true

        var data: String?
        let _url = NSURL(string: url)
        
        do{
            let html = try NSString(contentsOf: _url! as URL, encoding: String.Encoding.utf8.rawValue)
            
            let document: Document = try SwiftSoup.parse(html as String)
            if try document.select("div").size() > 0
            {
                let table: Element = try! document.getElementById("singleContent")!
                data = try! table.html()
            }
            
            completionHandler(data!)
        }
        
        catch {}
        
        UIApplication.shared.isNetworkActivityIndicatorVisible = false
    }
    
    public func GetGasStations(location:CLLocation, completionHandler: @escaping ([StationModel]) -> Void)
    {
        var stationList: [StationModel] = []
        
        var request = URLRequest(url: URL(string: "https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=" + String(location.coordinate.latitude) + "%2C" + String(location.coordinate.longitude) + "&radius=9000&types=gas_station&key=AIzaSyDSuWOakAmCKEzeDfPq3fRfuISKu0nhjmU")!)
        request.httpMethod = "GET"
        URLSession.shared.dataTask(with:request, completionHandler:
        {
            (data, response, error) in
            guard let data = data, error == nil else { return }
            
            if let httpStatus = response as? HTTPURLResponse, httpStatus.statusCode == 200
            {
                do
                {
                    let json = try JSONSerialization.jsonObject(with: data, options: .allowFragments) as! NSDictionary
                    if json.value(forKey: "status") as! String == "OK"
                    {
                        let stations = json["results"] as? [[String: AnyObject]]
                        
                        for station in stations!
                        {
                            stationList.append(StationModel(station))
                        }
                        
                        completionHandler(stationList)
                    }
                }
                    
                catch{}
            }
        }).resume()
    }
    
    public func GetChargeStations(completionHandler: @escaping ([DataModel]) -> Void)
    {
        var stationList : [DataModel] = []
        
        var request = URLRequest(url: URL(string: "http://esarj.com/api/stations")!)
        request.httpMethod = "GET"
        URLSession.shared.dataTask(with:request, completionHandler:
        {
                (data, response, error) in
                guard let data = data, error == nil else { return }
                
                if let httpStatus = response as? HTTPURLResponse, httpStatus.statusCode == 200
                {
                    do
                    {
                        let json = try JSONSerialization.jsonObject(with: data, options: .allowFragments) as! NSDictionary
                        if json.value(forKey: "key") as! String == "OK"
                        {

                            let stations = json["data"] as? [[String: AnyObject]]
                            
                            for station in stations!
                            {
                                stationList.append(DataModel(dictionary: station as NSDictionary)!)
                            }
                            completionHandler(stationList)
                        }
                    }
                        
                    catch{}
                }
        }).resume()
    }
}
