public class PlaceModel
{
    let html_attributions: String
    let next_page_token: String
    let results: [StationModel]
    let status: String
    
    init (_ json: [String: AnyObject])
    {
        if let html_attributions = json["html_attributions"] as? String { self.html_attributions = html_attributions }
        else { self.html_attributions = "" }
        
        if let next_page_token = json["next_page_token"] as? String { self.next_page_token = next_page_token }
        else { self.next_page_token = "" }
        
        if let results = json["results"] as? [[String: AnyObject]] {
            var result = [StationModel]()
            for obj in results {
                result.append(StationModel(obj))
            }
            self.results = result
        } else {
            self.results = [StationModel]()
        }
        
        if let status = json["status"] as? String { self.status = status }
        else { self.status = "" }
    }
}

public class StationModel
{
    let geometry: Geometry
    let icon: String
    let id: String
    let name: String
    let opening_hours: Opening_hours
    let photos: [Photos]
    let place_id: String
    let reference: String
    let scope: String
    let types: [String]
    let vicinity: String
    
    init (_ json: [String: AnyObject]) {
        
        if let geometry = json["geometry"] as? [String: AnyObject] { self.geometry = Geometry(geometry) }
        else { self.geometry = Geometry([ : ]) }
        
        if let icon = json["icon"] as? String { self.icon = icon }
        else { self.icon = "" }
        
        if let id = json["id"] as? String { self.id = id }
        else { self.id = "" }
        
        if let name = json["name"] as? String { self.name = name }
        else { self.name = "" }
        
        if let opening_hours = json["opening_hours"] as? [String: AnyObject] { self.opening_hours = Opening_hours(opening_hours) }
        else { self.opening_hours = Opening_hours([ : ]) }
        
        if let photos = json["photos"] as? [[String: AnyObject]] {
            var result = [Photos]()
            for obj in photos {
                result.append(Photos(obj))
            }
            self.photos = result
        } else {
            self.photos = [Photos]()
        }
        
        if let place_id = json["place_id"] as? String { self.place_id = place_id }
        else { self.place_id = "" }
        
        if let reference = json["reference"] as? String { self.reference = reference }
        else { self.reference = "" }
        
        if let scope = json["scope"] as? String { self.scope = scope }
        else { self.scope = "" }
        
        if let types = json["types"] as? [String] { self.types = types }
        else { self.types = [String]() }
        
        if let vicinity = json["vicinity"] as? String { self.vicinity = vicinity }
        else { self.vicinity = "" }
    }
}

class Photos
{
    let height: Int
    let html_attributions: [String]
    let photo_reference: String
    let width: Int
    
    init (_ json: [String: AnyObject])
    {
        if let height = json["height"] as? Int { self.height = height }
        else { self.height = 0 }
        
        if let html_attributions = json["html_attributions"] as? [String] { self.html_attributions = html_attributions }
        else { self.html_attributions = [String]() }
        
        if let photo_reference = json["photo_reference"] as? String { self.photo_reference = photo_reference }
        else { self.photo_reference = "" }
        
        if let width = json["width"] as? Int { self.width = width }
        else { self.width = 0 }
    }
}

class Opening_hours
{
    let open_now: Bool
    //let weekday_text: [AnyObject]
    
    init (_ json: [String: AnyObject])
    {
        if let open_now = json["open_now"] as? Bool { self.open_now = open_now }
        else { self.open_now = false }
    }
}

class Geometry
{
    let location: Location
    let viewport: Viewport
    
    init (_ json: [String: AnyObject])
    {
        if let location = json["location"] as? [String: AnyObject] { self.location = Location(location) }
        else { self.location = Location([ : ]) }
        
        if let viewport = json["viewport"] as? [String: AnyObject] { self.viewport = Viewport(viewport) }
        else { self.viewport = Viewport([ : ]) }
    }
}

class Viewport
{
    let northeast: Northeast
    let southwest: Southwest
    
    init (_ json: [String: AnyObject])
    {
        if let northeast = json["northeast"] as? [String: AnyObject] { self.northeast = Northeast(northeast) }
        else { self.northeast = Northeast([ : ]) }
        
        if let southwest = json["southwest"] as? [String: AnyObject] { self.southwest = Southwest(southwest) }
        else { self.southwest = Southwest([ : ]) }
    }
}

class Southwest
{
    let lat: Double
    let lng: Double
    
    init (_ json: [String: AnyObject]) {
        
        if let lat = json["lat"] as? Double { self.lat = lat }
        else { self.lat = 0 }
        
        if let lng = json["lng"] as? Double { self.lng = lng }
        else { self.lng = 0 }
    }
}

class Northeast
{
    let lat: Double
    let lng: Double
    
    init (_ json: [String: AnyObject]) {
        
        if let lat = json["lat"] as? Double { self.lat = lat }
        else { self.lat = 0 }
        
        if let lng = json["lng"] as? Double { self.lng = lng }
        else { self.lng = 0 }
    }
}

class Location
{
    let lat: Double
    let lng: Double
    
    init (_ json: [String: AnyObject]) {
        
        if let lat = json["lat"] as? Double { self.lat = lat }
        else { self.lat = 0 }
        
        if let lng = json["lng"] as? Double { self.lng = lng }
        else { self.lng = 0 }
    }
}
