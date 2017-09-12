import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate
{
    public static var Client = DataClient()
    var window: UIWindow?
    var tabBar: UITabBar?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        let width = (self.window?.bounds.size.width)! / 4

        UITabBar.appearance().selectionIndicatorImage = UIImage().makeImageWithColorAndSize(color: UIColor(red: 46/255, green: 204/255, blue: 113/255, alpha: 1), size: CGSize(width: width, height: 49))
        
        return true
    }
    
    func applicationWillResignActive(_ application: UIApplication) {

    }

    func applicationDidEnterBackground(_ application: UIApplication) {

    }

    func applicationWillEnterForeground(_ application: UIApplication) {

    }

    func applicationDidBecomeActive(_ application: UIApplication) {

    }

    func applicationWillTerminate(_ application: UIApplication) {

    }

    func application(_ application: UIApplication, performActionFor shortcutItem: UIApplicationShortcutItem, completionHandler: @escaping (Bool) -> Void) {
                
        if let tabVC = self.window?.rootViewController as? UITabBarController
        {
            if shortcutItem.type == "type1"
            {
                tabVC.selectedIndex = 0
            }
            
            else if shortcutItem.type == "type2"
            {
                tabVC.selectedIndex = 1
            }
            
            else if shortcutItem.type == "type3"
            {
                tabVC.selectedIndex = 2
            }
            
            else if shortcutItem.type == "type4"
            {
                tabVC.selectedIndex = 3
            }
        }
        
    }
    
}
