import TTGSnackbar
import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate
{
    var window: UIWindow?

    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        self.window = UIWindow(frame: UIScreen.main.bounds)

        self.setupStatus()

        let nc = UINavigationController(rootViewController: self.statusVC)
        self.window?.rootViewController = nc

        self.window!.backgroundColor = UIColor.white
        self.window!.makeKeyAndVisible()

        return true
    }

    private func LOG(_ message: String)
    {
        NSLog("App \(message)")
    }

    // MARK: - STATUS

    private var statusVC: StatusVC!
    
    private func setupStatus()
    {
        self.statusVC = StatusVC()

        /*
        // Display error if loading failed.
        self.pillsController.itemsFailed.subscribe {
            let msg = NSLocalizedString("Refresh.Failure", comment: "")
            let snackbar = TTGSnackbar(message: msg, duration: .short)
            snackbar.show()
        }
        */
    }


}
