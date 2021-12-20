import UIKit

class BaseController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    func appDelegate()-> AppDelegate{
        return UIApplication.shared.delegate as! AppDelegate
    }
        
    func sceneDelegate()-> SceneDelegate{
        return ((UIApplication.shared.connectedScenes.first!.delegate as? SceneDelegate)!)
    }

}
