import UIKit
import MapKit
import CoreLocation
import SCLAlertView

class MapViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate
{
    @IBOutlet var mapView: MKMapView!
    @IBOutlet var direction: UIImageView!
    @IBOutlet var informationButton: UIBarButtonItem!
    @IBOutlet var settingsButton: UIBarButtonItem!
    let locationManager = CLLocationManager()
    var currentLocation: CLLocation!
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.initialize()
    }
    
    
    private func initialize()
    {
        if CLLocationManager.locationServicesEnabled()
        {
            locationManager.requestAlwaysAuthorization()
            locationManager.requestWhenInUseAuthorization()
            locationManager.delegate = self
            locationManager.desiredAccuracy = kCLLocationAccuracyBest
            locationManager.startUpdatingLocation()
            mapView.showsUserLocation = true

            self.GetGasStationRequest()
        }

        // direction tapped events
        let tapGestureRecognizer = UITapGestureRecognizer(target:self, action:#selector(direction_Tapped(img:)))
        direction.isUserInteractionEnabled = true
        direction.addGestureRecognizer(tapGestureRecognizer)
    }
    
    private func GetGasStationRequest()
    {
        DispatchQueue.main.async
        {
            AppDelegate.Client.GetGasStations(location: self.currentLocation) { (stationList) -> Void in
            
                for station in stationList
                {
                    let annotation = MKPointAnnotation()
                    annotation.coordinate = CLLocationCoordinate2D(latitude: station.geometry.location.lat, longitude: station.geometry.location.lng)
                    annotation.title = station.name

                    self.mapView.addAnnotation(annotation)
                }
            }
        }
    }
    
    @IBAction func informationButton_Tapped(_ sender: UIBarButtonItem)
    {
        let alert = SCLAlertView()
        
        alert.addButton("Web") {
            let url = URL(string: "https://www.google.com")!
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
        
        alert.addButton("Skype"){
            let url = URL(string: "https://join.skype.com/bot/0f112caa-2fab-4d22-a461-c4cb58776d25")!
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
        
        alert.addButton("E-Posta") {
            let subject = "Bir şikayetim olacaktı"
            let body = "..."
            let coded = "mailto:posta@onurcelikeng.com?subject=\(subject)&body=\(body)".addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)
            
            if let emailURL: NSURL = NSURL(string: coded!) {
                if UIApplication.shared.canOpenURL(emailURL as URL) {
                    UIApplication.shared.open(emailURL as URL)
                }
            }
        }
        
        alert.showSuccess("Teşekkürler", subTitle: "\nÖncelikle Benzinci'yi kullandığınız için teşekkür ederiz. Her türlü görüş, öneri ve yorumlarınız için sizleri bekliyor olacağız.")
    }
    
    var settingsButton2:String = "Trafiği Göster"
    var settingsButton3:String = "Hybird Görünüm"
    @IBAction func settingsButton_Tapped(_ sender: UIBarButtonItem)
    {
        let alert = SCLAlertView()
        
        alert.addButton("Yenile")
        {
            self.mapView.removeAnnotations(self.mapView.annotations)
            self.GetGasStationRequest()
        }
        
        alert.addButton(settingsButton2)
        {
            if self.mapView.showsTraffic == false{
                self.mapView.showsTraffic = true
                self.settingsButton2 = "Trafiği Gizle"
            }
            else{
                self.mapView.showsTraffic = false
                self.settingsButton2 = "Trafiği Göster"
            }
        }
        
        alert.addButton(settingsButton3)
        {
            if self.mapView.mapType == .hybrid{
                self.mapView.mapType = .standard
                self.settingsButton3 = "Hybird Görünüm"
            }
            else{
                self.mapView.mapType = .hybrid
                self.settingsButton3 = "Standart Görünüm"
            }
        }
        
        alert.showSuccess("Harita Ayarları", subTitle: "\nHarita görünümü ayarlarını buradan değiştirebilirsiniz.")
    }
    
    func direction_Tapped(img: AnyObject)
    {
        let location: CLLocationCoordinate2D = CLLocationCoordinate2DMake(currentLocation.coordinate.latitude, currentLocation.coordinate.longitude)
        let span: MKCoordinateSpan = MKCoordinateSpanMake(0.05, 0.05)
        let region: MKCoordinateRegion = MKCoordinateRegionMake(location, span)
        
        self.mapView.setRegion(region, animated: true)
    }

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation])
    {
        self.currentLocation = locations[0] as CLLocation

        locationManager.stopUpdatingLocation()
            
        let location: CLLocationCoordinate2D = CLLocationCoordinate2DMake(currentLocation.coordinate.latitude, currentLocation.coordinate.longitude)
        let span: MKCoordinateSpan = MKCoordinateSpanMake(0.05, 0.05)
        let region: MKCoordinateRegion = MKCoordinateRegionMake(location, span)
        
        self.mapView.setRegion(region, animated: true)
    }
    
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView?
    {
        guard !annotation.isKind(of: MKUserLocation.self) else{
            return nil
        }
        
        let annotationIdentifier = "AnnotationIdentifier"
        
        var annotationView = mapView.dequeueReusableAnnotationView(withIdentifier: annotationIdentifier)
        
        if annotationView == nil {
            annotationView = MKAnnotationView(annotation: annotation, reuseIdentifier: annotationIdentifier)
            //annotationView!.rightCalloutAccessoryView = UIButton(type: .detailDisclosure)
            annotationView!.canShowCallout = true
        }
        else {
            annotationView!.annotation = annotation
        }
        
        let pin:String = ((annotationView!.annotation?.title)!)!
        annotationView!.image = UIImage(named: LogoHelper.setMapPin(value: pin))
        
        return annotationView
    }

}
