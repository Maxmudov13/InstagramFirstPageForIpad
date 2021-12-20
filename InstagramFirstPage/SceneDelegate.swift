import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        CallSignINViewController()
        
        guard let _ = (scene as? UIWindowScene) else { return }
        
    }
    func CallHomeController() {
        let vc = HomeViewController(nibName: "HomeViewController", bundle: nil)
        let nc = UINavigationController(rootViewController: vc)
        
        if self.window == nil {
            self.window = UIWindow(frame: UIScreen.main.bounds)
        }
        self.window?.rootViewController = nc
        self.window?.makeKeyAndVisible()
    }
    func CallSignINViewController() {
        let vc = SignINViewController(nibName: "SignINViewController", bundle: nil)
        let nc = UINavigationController(rootViewController: vc)
        if self.window == nil {
            self.window = UIWindow(frame: UIScreen.main.bounds)
        }
        self.window?.rootViewController = nc
        self.window?.makeKeyAndVisible()
    }
    func sceneDidDisconnect(_ scene: UIScene) {}

    func sceneDidBecomeActive(_ scene: UIScene) {}

    func sceneWillResignActive(_ scene: UIScene) {}

    func sceneWillEnterForeground(_ scene: UIScene) {}

    func sceneDidEnterBackground(_ scene: UIScene) {}


}

