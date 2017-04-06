//
//  SecondViewController.swift
//  SampleRadioButton
//
//  Created by Pushpam Group on 06/04/17.
//  Copyright © 2017 Pushpam Group. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {
    
    @IBOutlet var sampleTableView: UITableView!
    var searchFilterTitleArray = ["SORT BY","CUISINE"]
    
    var checkerButtonCurrentRow:Int =  Int()
    var checkerButtonStatus:Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialUISetup()
    }
    override func viewWillAppear(_ animated: Bool) {
        initialUISetup()
    }
    func initialUISetup() {
        
        sampleTableView.allowsMultipleSelectionDuringEditing = true
        //sampleTableView.setEditing(true, animated: false)
        
    }
    //TableView Delegates
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        switch section
        {
        case 0:
            return 3
        case 1:
            return 5
        default:
            return 2
        }
        
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView()
        let headerCell = tableView.dequeueReusableCell(withIdentifier: "sampleHeaderTableViewCell") as! SampleHeaderTableViewCell
        headerCell.headerTitle.text =  searchFilterTitleArray[section]
        headerView.addSubview(headerCell)
        return headerView
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        
        return CGFloat(40)
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        switch indexPath.section
        {
        case 0:
            return 50
        case 1:
            return 50
        default:
            return 2
        }
    }
    func scrollViewDidScroll(_ scrollView: UIScrollView){
        let verticalIndicator: UIImageView = (scrollView.subviews[(scrollView.subviews.count - 1)] as! UIImageView)
        verticalIndicator.backgroundColor = UIColor.red
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch indexPath.section
        {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "imageRadioCheckerTableCell") as! ImageRadioCheckerTableCell
            
            return cell
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: "imageCheckerTableViewCell") as! ImageCheckerTableViewCell
            
            
            return cell
            
        default:
            let cell = UITableViewCell()
            return cell
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
