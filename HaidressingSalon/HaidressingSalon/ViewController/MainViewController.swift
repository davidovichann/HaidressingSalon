//
//  MainViewController.swift
//  HaidressingSalon
//
//  Created by AdminLWO on 19.01.17.
//  Copyright © 2017 ad. All rights reserved.
//

import UIKit
import RESideMenu

class MainViewController: UIViewController
, UITableViewDelegate, UITableViewDataSource
{
    
    @IBOutlet var leftMenu: UIButton!
    var headerView : UIView = UIView.init()
    var titleHeader : UILabel = UILabel.init()
    var authorizationBtn : UIButton = UIButton.init(type: UIButtonType.system)
    var footerView : UIView = UIView.init()
    
    @IBAction func didPressLeftMenu(_ sender: Any) {
        
          }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        leftMenu.addTarget(self, action: #selector(self.presentLeftMenuViewController), for: .touchUpInside)
        
        navigationController?.navigationBar.isHidden = true
        
        navigationItem.leftBarButtonItem = UIBarButtonItem.init(title: "Left", style: UIBarButtonItemStyle.plain, target: self, action: #selector(self.presentLeftMenuViewController))
       
//        let contentVC : ContentViewController = storyboard?.instantiateViewController(withIdentifier: "contentVC") as! ContentViewController
        
//        RESideMenu
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: TableView
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell : UITableViewCell!
        
        cell = UITableViewCell.init()
        
        cell.backgroundColor = UIColor.init(red: 180.0/255.0, green: 210.0/255.0, blue: 255.0/255.0, alpha: 1.0)
        
        cell.textLabel?.text = "Main Cell"
        
        return cell
    }
    
    public func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        headerView.frame = CGRect.init(x: 0.0, y: 0.0, width: UIScreen.main.bounds.size.width, height: 212.0)
        headerView.backgroundColor =  UIColor.init(red: 237.0/255.0, green: 229.0/255.0, blue: 133.0/255.0, alpha: 1.0)
        let backImg : UIImageView = UIImageView.init(image: UIImage.init(named: "ic_backTitle"))
        backImg.frame = CGRect.init(x:  (UIScreen.main.bounds.size.width - 146.0) / 2, y: 20, width: 146.0, height: 165)
//       
//        titleHeader.textColor =  UIColor.white
//        titleHeader.text = "Hairdressing Salon"
//        titleHeader.font = UIFont(name: "Directory", size: 25)
//        titleHeader.backgroundColor = UIColor.clear
//        titleHeader.frame = CGRect.init(x: 0.0, y: headerView.bounds.size.height / 2 - 10, width: UIScreen.main.bounds.size.width, height: 40)
//        titleHeader.textAlignment = NSTextAlignment.center
        
        headerView.addSubview(backImg)
//        headerView.addSubview(titleHeader)
        
        return headerView
    }
    
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let cell : UITableViewCell = tableView.cellForRow(at: indexPath)!
        cell.backgroundColor = UIColor.white
        cell.textLabel?.backgroundColor = UIColor.white
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    public func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        let cell : UITableViewCell = tableView.cellForRow(at: indexPath)!
//        cell.backgroundColor = UIColor.init(red: 180.0/255.0, green: 210.0/255.0, blue: 255.0/255.0, alpha: 1.0)
//        cell.textLabel?.backgroundColor = UIColor.init(red: 180.0/255.0, green: 210.0/255.0, blue: 255.0/255.0, alpha: 1.0)
    }
    
    public func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        
        footerView.frame = CGRect.init(x: 0.0, y: UIScreen.main.bounds.size.height - 100, width: UIScreen.main.bounds.size.width, height: 100.0)
        footerView.backgroundColor =  UIColor.init(red: 237.0/255.0, green: 229.0/255.0, blue: 133.0/255.0, alpha: 1.0)
        
//        authorizationBtn = UIButton.init(type: UIButtonType.system)
        
        let registrBtn : UIButton = UIButton.init(frame: CGRect.init(x: UIScreen.main.bounds.size.width - 20 - UIScreen.main.bounds.size.width / 2 - 20, y: 20, width: UIScreen.main.bounds.size.width / 2 - 20, height: 60.0))
//        authorizationBtn.target(forAction: nil, withSender: nil)
        
        authorizationBtn.frame = CGRect.init(x: 20, y: 20, width: UIScreen.main.bounds.size.width / 2 - 40, height: 60.0)
        authorizationBtn.backgroundColor = UIColor.clear
        
//        let titleAuth : UILabel = UILabel.init()
//        titleAuth.textColor =  UIColor.white
//        titleAuth.text = "SIGN IN"
//        titleAuth.font = UIFont(name: "Directory", size: 25)
//        titleAuth.backgroundColor = UIColor.clear
//        titleAuth.frame = CGRect.init(x: 20, y: 20, width: UIScreen.main.bounds.size.width / 2 - 40, height: 60.0)
//        titleAuth.textAlignment = NSTextAlignment.center
        
        authorizationBtn.setTitleColor( UIColor.white, for: UIControlState.normal)
        registrBtn.titleLabel?.textColor = UIColor.white
        authorizationBtn.setTitle("SIGN IN", for: UIControlState.normal)
        registrBtn.titleLabel?.text = "SIGN UP"
        authorizationBtn.titleLabel?.font = UIFont(name: "Directory", size: 15)
        registrBtn.titleLabel?.font = UIFont(name: "Directory", size: 25)
        
        
        authorizationBtn.titleLabel?.backgroundColor = UIColor.clear
        
//        authorizationBtn.titleLabel?.text = titleAuth.text
        
        registrBtn.titleLabel?.backgroundColor = UIColor.clear
        
        footerView.addSubview(authorizationBtn)
//        footerView.addSubview(registrBtn)
        
        return footerView
    }
    
    public func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 205.0;
    }
    
    public func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 100.0;
    }

}
