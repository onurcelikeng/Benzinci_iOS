public class LogoHelper
{
    public static func setMapPin(value: String) -> String
    {
        var path: String?
        
        if(value.lowercased().range(of: "alpet") != nil){
            path = "alpetpin"
        }
        
        else if(value.lowercased().range(of: "bp") != nil){
            path = "bppin"
        }
        
        else if(value.lowercased().range(of: "lukoil") != nil){
            path = "lukoilpin"
        }
        
        else if(value.lowercased().range(of: "m oil") != nil || value.lowercased().range(of: "moil") != nil){
            path = "moilpin"
        }
        
        else if(value.lowercased().range(of: "shell") != nil){
            path = "shellpin"
        }
        
        else if(value.lowercased().range(of: "opet") != nil){
            path = "opetpin"
        }
        
        else if(value.lowercased().range(of: "petrol ofisi") != nil || value.lowercased().range(of: "po") != nil){
            path = "popin"
        }
        
        else if(value.lowercased().range(of: "total") != nil){
            path = "totalpin"
        }
        
        else{
            path = "stationpin"
        }
        
        return path!
    }
}
