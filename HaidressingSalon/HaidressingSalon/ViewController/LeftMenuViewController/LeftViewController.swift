//
//  LeftViewController.swift
//  HaidressingSalon
//
//  Created by AdminLWO on 19.01.17.
//  Copyright © 2017 ad. All rights reserved.
//

import UIKit

class LeftViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        tableView.backgroundColor = UIColor.init(red: 237.0/255.0, green: 229.0/255.0, blue: 133.0/255.0, alpha: 0.5)
        // Do any additional setup after loading the view.
        tableView.tableFooterView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: 0, height: 0))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: UITableView Delegate
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        switch indexPath.row {
        case 0:
            sideMenuViewController.setContentViewController(storyboard?.instantiateViewController(withIdentifier: "mainVC"), animated: true)
            sideMenuViewController.hideViewController()
        default:
            break
        }
    }
    
    //MARK: UITableView Datasource
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 54
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier : String? = "Cell"
        
        var cell : UITableViewCell? = tableView.dequeueReusableCell(withIdentifier: (cellIdentifier)!)
        
        if cell == nil {
            cell = UITableViewCell.init(style: UITableViewCellStyle.default, reuseIdentifier: cellIdentifier)
            cell?.backgroundColor = UIColor.clear
            cell?.textLabel?.font = UIFont(name: "ufonts.com_abadi-mt-condensed-light", size: 21)
            cell?.textLabel?.textColor = UIColor.init(white: 255, alpha: 1)
            cell?.textLabel?.highlightedTextColor = UIColor.lightGray
            cell?.selectedBackgroundView = UIView.init()
        }
        
        let titles : NSArray = NSArray.init(objects: "Home", "News", "Sales", "About Us", "Contacts")
            cell?.textLabel?.text = titles.object(at: indexPath.row) as? String
//        cell.imageView.image = [UIImage imageNamed:images[indexPath.row]];
        
            return (cell)!
    }

    //MARK: TableView

    
    public func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let headerView : UIView = UIView.init(frame: CGRect.init(x: 0.0, y: 0.0, width: UIScreen.main.bounds.size.width, height: 72.0))
        headerView.backgroundColor =  UIColor.clear
        let titleHeader : UILabel = UILabel.init()
                titleHeader.textColor =  UIColor.init(white: 255, alpha: 1)
                titleHeader.text = "Hairdressing Salon"
                titleHeader.font = UIFont(name: "ufonts.com_abadi-mt-condensed-extra-bold", size: 25)
                titleHeader.backgroundColor = UIColor.clear
                titleHeader.frame = CGRect.init(x: 0.0, y: headerView.bounds.size.height / 2 - 10, width: UIScreen.main.bounds.size.width, height: 40)
                titleHeader.textAlignment = NSTextAlignment.center
    
                headerView.addSubview(titleHeader)
        
        return headerView
    }
    
//    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        
//        let cell : UITableViewCell = tableView.cellForRow(at: indexPath)!
//        cell.backgroundColor = UIColor.white
//        cell.textLabel?.backgroundColor = UIColor.white
//        
//        tableView.deselectRow(at: indexPath, animated: true)
//    }
    
//    public func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
//        let cell : UITableViewCell = tableView.cellForRow(at: indexPath)!
//        //        cell.backgroundColor = UIColor.init(red: 180.0/255.0, green: 210.0/255.0, blue: 255.0/255.0, alpha: 1.0)
//        //        cell.textLabel?.backgroundColor = UIColor.init(red: 180.0/255.0, green: 210.0/255.0, blue: 255.0/255.0, alpha: 1.0)
//    }
    
    public func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        
        let footerView : UIView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: 0, height: 0))
//        footerView.backgroundColor =  UIColor.clear
        
        //        authorizationBtn = UIButton.init(type: UIButtonType.system)
        
//        let registrBtn : UIButton = UIButton.init(frame: CGRect.init(x: UIScreen.main.bounds.size.width - 20 - UIScreen.main.bounds.size.width / 2 - 20, y: 20, width: UIScreen.main.bounds.size.width / 2 - 20, height: 60.0))
//        //        authorizationBtn.target(forAction: nil, withSender: nil)
//        
//        authorizationBtn.frame = CGRect.init(x: 20, y: 20, width: UIScreen.main.bounds.size.width / 2 - 40, height: 60.0)
//        authorizationBtn.backgroundColor = UIColor.clear
//        
        //        let titleAuth : UILabel = UILabel.init()
        //        titleAuth.textColor =  UIColor.white
        //        titleAuth.text = "SIGN IN"
        //        titleAuth.font = UIFont(name: "Directory", size: 25)
        //        titleAuth.backgroundColor = UIColor.clear
        //        titleAuth.frame = CGRect.init(x: 20, y: 20, width: UIScreen.main.bounds.size.width / 2 - 40, height: 60.0)
        //        titleAuth.textAlignment = NSTextAlignment.center
//        
//        authorizationBtn.setTitleColor( UIColor.white, for: UIControlState.normal)
//        registrBtn.titleLabel?.textColor = UIColor.white
//        authorizationBtn.setTitle("SIGN IN", for: UIControlState.normal)
//        registrBtn.titleLabel?.text = "SIGN UP"
//        authorizationBtn.titleLabel?.font = UIFont(name: "Directory", size: 15)
//        registrBtn.titleLabel?.font = UIFont(name: "Directory", size: 25)
//        
//        
//        authorizationBtn.titleLabel?.backgroundColor = UIColor.clear
//        
//        //        authorizationBtn.titleLabel?.text = titleAuth.text
//        
//        registrBtn.titleLabel?.backgroundColor = UIColor.clear
//        
//        footerView.addSubview(authorizationBtn)
        //        footerView.addSubview(registrBtn)
        
        return footerView
    }
    
    public func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 72.0;
    }
    
    public func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 0;
    }
}

