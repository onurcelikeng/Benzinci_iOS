import Foundation

public class ChargeModel
{
    public var key : String?
    public var description : String?
    public var status : Int?
    public var data : Array<DataModel>?
    
    public class func modelsFromDictionaryArray(array:NSArray) -> [ChargeModel]
    {
        var models:[ChargeModel] = []
        for item in array
        {
            models.append(ChargeModel(dictionary: item as! NSDictionary)!)
        }
        return models
    }
    
    required public init?(dictionary: NSDictionary) {
        
        key = dictionary["key"] as? String
        description = dictionary["description"] as? String
        status = dictionary["status"] as? Int
        if (dictionary["data"] != nil) { data = DataModel.modelsFromDictionaryArray(array: dictionary["data"] as! NSArray) }
    }
    
    public func dictionaryRepresentation() -> NSDictionary {
        
        let dictionary = NSMutableDictionary()
        
        dictionary.setValue(self.key, forKey: "key")
        dictionary.setValue(self.description, forKey: "description")
        dictionary.setValue(self.status, forKey: "status")
        
        return dictionary
    }
}
