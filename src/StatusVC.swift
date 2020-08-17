import Anchorage
import UIKit

class StatusVC: UIViewController
{

    private var lastView: UIView!

    override func viewDidLoad()
    {
        super.viewDidLoad()

        self.title = NSLocalizedString("Status", comment: "")

        /*
        self.setupNameAndDescription()

        // Layout top to bottom.
        self.lastView = startLastView(forVC: self)
        self.layoutRefresher()
        self.layoutPagerView()
        self.layoutDots()
        self.layoutNameAndDescription()

        // Layout at the bottom.
        self.layoutCycler()
        */
    }

    override func viewDidLayoutSubviews()
    {
        super.viewDidLayoutSubviews()
    }

    private func LOG(_ message: String)
    {
        NSLog("StatusVC \(message)")
    }

    /*
    // MARK: - PAGER VIEW

    private var pagerView: FSPagerView!

    private func setupPagerView()
    {
        self.pagerView = FSPagerView()
        self.view.addSubview(self.pagerView)

        self.pagerView.dataSource = self
        self.pagerView.transformer = FSPagerViewTransformer(type: .linear)
        self.pagerView.register(
            Cell.self,
            forCellWithReuseIdentifier: self.CELL_ID
        )

        // Refresh on changes.
        self.itemsChanged.subscribe { [weak self] in
            self?.pagerView.reloadData()
        }
    }

    private func layoutPagerView()
    {
        self.pagerView.topAnchor == self.lastView.bottomAnchor + 8
        self.pagerView.leftAnchor == self.view.leftAnchor
        self.pagerView.rightAnchor == self.view.rightAnchor
        self.pagerView.heightAnchor == self.view.heightAnchor / 2
        self.lastView = self.pagerView
    }
    
    private func layoutPagerViewItems()
    {
        let size = self.pagerView.frame.size
        let height = size.height / 1.1
        let width = size.width / 1.6
        self.pagerView.itemSize = CGSize(width: width, height: height)
    }
    
    // MARK: - NAME AND DESCRIPTION

    private var nameLabel: UILabel!
    private var descLabel: UILabel!
    
    private func setupNameAndDescription()
    {
        self.nameLabel = UILabel()
        self.view.addSubview(self.nameLabel)
        self.nameLabel.lineBreakMode = .byWordWrapping
        self.nameLabel.numberOfLines = 0
        self.nameLabel.font =
            UIFont.systemFont(ofSize: 23, weight: UIFont.Weight.bold)

        self.descLabel = UILabel()
        self.view.addSubview(self.descLabel)
        self.descLabel.lineBreakMode = .byWordWrapping
        self.descLabel.numberOfLines = 0
        self.descLabel.textColor = .lightGray
    
        self.itemsChanged.subscribe { [weak self] in
            self?.updateNameAndDescription()
        }
        self.selectedItemIdChanged.subscribe { [weak self] in
            self?.updateNameAndDescription()
        }
    }
    
    private func layoutNameAndDescription()
    {
        self.nameLabel.topAnchor == self.lastView.bottomAnchor + 16
        self.nameLabel.leftAnchor == self.view.leftAnchor + 16
        self.nameLabel.rightAnchor == self.view.rightAnchor - 16
        self.lastView = self.nameLabel

        self.descLabel.topAnchor == self.lastView.bottomAnchor + 16
        self.descLabel.leftAnchor == self.view.leftAnchor + 16
        self.descLabel.rightAnchor == self.view.rightAnchor - 16
        self.lastView = self.descLabel
    }
    
    private func updateNameAndDescription()
    {
        let fadeOut = { [weak self] in
            self?.nameLabel.alpha = 0
            self?.descLabel.alpha = 0
        }
        let fadeIn = { [weak self] in
            guard let this = self else { return }
            if this.selectedItemId < this.items.count
            {
                this.nameLabel.text = this.items[this.selectedItemId].name
                this.descLabel.text = this.items[this.selectedItemId].desc
            }
            self?.nameLabel.alpha = 1
            self?.descLabel.alpha = 1
        }
        
        // Animate.
        let tm = 0.2
        UIView.animate(withDuration: tm, animations: fadeOut) { (finished) in
            UIView.animate(withDuration: tm, animations: fadeIn)
        }
    }
    */

}
