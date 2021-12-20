import UIKit

class SignUPViewController: BaseController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }



    // MARK: - Methods


    
    // MARK: - Avtions
    
    @IBAction func SignUpButton(_ sender: Any) {
        sceneDelegate().CallSignINViewController()
    }
    
    @IBAction func SignInButton(_ sender: Any) {
        sceneDelegate().CallSignINViewController()
    }
    
    
}
