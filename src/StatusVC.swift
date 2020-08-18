import SwiftUI
import UIKit

class StatusVC: UIViewController
{

    private var lastView: UIView!

    override func viewDidLoad()
    {
        super.viewDidLoad()

        self.title = NSLocalizedString("Status", comment: "")

        self.embedSwiftUIView()
    }

    override func viewDidLayoutSubviews()
    {
        super.viewDidLayoutSubviews()
    }

    private func LOG(_ message: String)
    {
        NSLog("StatusVC \(message)")
    }

    private func embedSwiftUIView()
    {
        let content = ContentView(rGuess: 0.5, gGuess: 0.5, bGuess: 0.5)
        let child = UIHostingController(rootView: content)
        addChild(child)
        child.view.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(child.view)
        child.didMove(toParent: self)

        NSLayoutConstraint.activate([
            child.view.widthAnchor.constraint(equalTo: view.widthAnchor),
            child.view.heightAnchor.constraint(equalTo: view.heightAnchor),
            child.view.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            child.view.topAnchor.constraint(equalTo: view.topAnchor),
        ])
    }

}
