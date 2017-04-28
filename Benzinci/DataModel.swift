import Foundation

public class DataModel {
    public var status : Int?
    public var code : String?
    public var isInstalled : Int?
    public var isActive : Int?
    public var isOnline : Int?
    public var warning : String?
    public var stationStateDate : String?
    public var plugStateDate : String?
    public var latestStateDate : String?
    public var latitude : Double?
    public var longitude : Double?
    public var floorLevel : Int?
    public var phone : String?
    public var email : String?
    public var isIndoor : Int?
    public var reservable : Int?
    public var valet : Int?
    public var notes : String?
    public var greenE : Int?
    public var modelCode : String?
    public var modelDescription : String?
    public var accessTypeId : Int?
    public var accessRestriction : String?
    public var payMethods : Int?
    public var emissionPerKWH : Double?
    public var emissionPerGal : Double?
    public var efficiencyPerKWH : Double?
    public var efficiencyPerGal : Int?
    public var updateDate : String?
    public var updateAction : String?
    public var insertDate : String?
    public var storeName : String?
    public var storeAddress : String?
    public var storePostalCode : Int?
    public var storeCity : String?
    public var storeState : String?
    public var storeCountryCode : String?
    public var storeAddressDesc : String?
    public var storeTimezone : String?
    public var storeAmenities : String?
    public var storeTotalParking : Int?
    public var plugsTotal : Int?
    public var plugsAvailable : Int?
    public var plugsOccupied : Int?
    public var plugsUnknown : Int?
    public var operatingHours : String?
    
    public class func modelsFromDictionaryArray(array:NSArray) -> [DataModel]
    {
        var models:[DataModel] = []
        for item in array
        {
            models.append(DataModel(dictionary: item as! NSDictionary)!)
        }
        return models
    }
    
    required public init?(dictionary: NSDictionary) {
        
        status = dictionary["status"] as? Int
        code = dictionary["code"] as? String
        isInstalled = dictionary["isInstalled"] as? Int
        isActive = dictionary["isActive"] as? Int
        isOnline = dictionary["isOnline"] as? Int
        warning = dictionary["warning"] as? String
        stationStateDate = dictionary["stationStateDate"] as? String
        plugStateDate = dictionary["plugStateDate"] as? String
        latestStateDate = dictionary["latestStateDate"] as? String
        latitude = dictionary["latitude"] as? Double
        longitude = dictionary["longitude"] as? Double
        floorLevel = dictionary["floorLevel"] as? Int
        phone = dictionary["phone"] as? String
        email = dictionary["email"] as? String
        isIndoor = dictionary["isIndoor"] as? Int
        reservable = dictionary["reservable"] as? Int
        valet = dictionary["valet"] as? Int
        notes = dictionary["notes"] as? String
        greenE = dictionary["greenE"] as? Int
        modelCode = dictionary["modelCode"] as? String
        modelDescription = dictionary["modelDescription"] as? String
        accessTypeId = dictionary["accessTypeId"] as? Int
        accessRestriction = dictionary["accessRestriction"] as? String
        payMethods = dictionary["payMethods"] as? Int
        emissionPerKWH = dictionary["emissionPerKWH"] as? Double
        emissionPerGal = dictionary["emissionPerGal"] as? Double
        efficiencyPerKWH = dictionary["efficiencyPerKWH"] as? Double
        efficiencyPerGal = dictionary["efficiencyPerGal"] as? Int
        updateDate = dictionary["updateDate"] as? String
        updateAction = dictionary["updateAction"] as? String
        insertDate = dictionary["insertDate"] as? String
        storeName = dictionary["storeName"] as? String
        storeAddress = dictionary["storeAddress"] as? String
        storePostalCode = dictionary["storePostalCode"] as? Int
        storeCity = dictionary["storeCity"] as? String
        storeState = dictionary["storeState"] as? String
        storeCountryCode = dictionary["storeCountryCode"] as? String
        storeAddressDesc = dictionary["storeAddressDesc"] as? String
        storeTimezone = dictionary["storeTimezone"] as? String
        storeAmenities = dictionary["storeAmenities"] as? String
        storeTotalParking = dictionary["storeTotalParking"] as? Int
        plugsTotal = dictionary["plugsTotal"] as? Int
        plugsAvailable = dictionary["plugsAvailable"] as? Int
        plugsOccupied = dictionary["plugsOccupied"] as? Int
        plugsUnknown = dictionary["plugsUnknown"] as? Int
        operatingHours = dictionary["operatingHours"] as? String
    }
    
    public func dictionaryRepresentation() -> NSDictionary {
        
        let dictionary = NSMutableDictionary()
        
        dictionary.setValue(self.status, forKey: "status")
        dictionary.setValue(self.code, forKey: "code")
        dictionary.setValue(self.isInstalled, forKey: "isInstalled")
        dictionary.setValue(self.isActive, forKey: "isActive")
        dictionary.setValue(self.isOnline, forKey: "isOnline")
        dictionary.setValue(self.warning, forKey: "warning")
        dictionary.setValue(self.stationStateDate, forKey: "stationStateDate")
        dictionary.setValue(self.plugStateDate, forKey: "plugStateDate")
        dictionary.setValue(self.latestStateDate, forKey: "latestStateDate")
        dictionary.setValue(self.latitude, forKey: "latitude")
        dictionary.setValue(self.longitude, forKey: "longitude")
        dictionary.setValue(self.floorLevel, forKey: "floorLevel")
        dictionary.setValue(self.phone, forKey: "phone")
        dictionary.setValue(self.email, forKey: "email")
        dictionary.setValue(self.isIndoor, forKey: "isIndoor")
        dictionary.setValue(self.reservable, forKey: "reservable")
        dictionary.setValue(self.valet, forKey: "valet")
        dictionary.setValue(self.notes, forKey: "notes")
        dictionary.setValue(self.greenE, forKey: "greenE")
        dictionary.setValue(self.modelCode, forKey: "modelCode")
        dictionary.setValue(self.modelDescription, forKey: "modelDescription")
        dictionary.setValue(self.accessTypeId, forKey: "accessTypeId")
        dictionary.setValue(self.accessRestriction, forKey: "accessRestriction")
        dictionary.setValue(self.payMethods, forKey: "payMethods")
        dictionary.setValue(self.emissionPerKWH, forKey: "emissionPerKWH")
        dictionary.setValue(self.emissionPerGal, forKey: "emissionPerGal")
        dictionary.setValue(self.efficiencyPerKWH, forKey: "efficiencyPerKWH")
        dictionary.setValue(self.efficiencyPerGal, forKey: "efficiencyPerGal")
        dictionary.setValue(self.updateDate, forKey: "updateDate")
        dictionary.setValue(self.updateAction, forKey: "updateAction")
        dictionary.setValue(self.insertDate, forKey: "insertDate")
        dictionary.setValue(self.storeName, forKey: "storeName")
        dictionary.setValue(self.storeAddress, forKey: "storeAddress")
        dictionary.setValue(self.storePostalCode, forKey: "storePostalCode")
        dictionary.setValue(self.storeCity, forKey: "storeCity")
        dictionary.setValue(self.storeState, forKey: "storeState")
        dictionary.setValue(self.storeCountryCode, forKey: "storeCountryCode")
        dictionary.setValue(self.storeAddressDesc, forKey: "storeAddressDesc")
        dictionary.setValue(self.storeTimezone, forKey: "storeTimezone")
        dictionary.setValue(self.storeAmenities, forKey: "storeAmenities")
        dictionary.setValue(self.storeTotalParking, forKey: "storeTotalParking")
        dictionary.setValue(self.plugsTotal, forKey: "plugsTotal")
        dictionary.setValue(self.plugsAvailable, forKey: "plugsAvailable")
        dictionary.setValue(self.plugsOccupied, forKey: "plugsOccupied")
        dictionary.setValue(self.plugsUnknown, forKey: "plugsUnknown")
        dictionary.setValue(self.operatingHours, forKey: "operatingHours")
        
        return dictionary
    }
}
