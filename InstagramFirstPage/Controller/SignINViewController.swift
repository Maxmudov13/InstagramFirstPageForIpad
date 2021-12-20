import UIKit

class SignINViewController: BaseController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        intiView()
        
    }



    // MARK: - Methods
    func intiView() {
        
        
    }
    
    func CallSignUPViewController() {
        let vc = SignUPViewController(nibName:"SignUPViewController", bundle: nil)
        self.navigationController?.pushViewController(vc,animated: true)
    }


    
    
    
    
    
    // MARK: - Actions
    
    @IBAction func SignInButton(_ sender: Any) {
        sceneDelegate().CallHomeController()
    }
    
    @IBAction func SignUpButton(_ sender: Any) {
        CallSignUPViewController()
    }
    
}
