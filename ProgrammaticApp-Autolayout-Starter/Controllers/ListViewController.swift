//
//  ListViewController.swift
//  ProgrammaticApp-2
//
//  Created by Arun Patwardhan on 29/07/19.
//  Copyright © 2019 Amaranthine. All rights reserved.
//

import UIKit

class ListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.createTable()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.list.reloadData()
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    //UI Elements   --------------------------------------------------
    var list : UITableView                  =   UITableView()
    
    //Model
    var data : [FeedbackResponse]?
    
    //Functions     --------------------------------------------------
    func createTable()
    {
        list.delegate                       = self
        list.dataSource                     = self
        self.view.addSubview(list)
    }
    
    //Data source
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard data != nil
        else
        {
            return 0
        }
        print(#line, data!.count)
        return data!.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell : UITableViewCell?         = tableView.dequeueReusableCell(withIdentifier: "CELL")
        
        if nil == cell
        {
            cell                            = UITableViewCell(style: UITableViewCell.CellStyle.subtitle, reuseIdentifier: "CELL")
        }
        
        let rowData : FeedbackResponse = data![indexPath.row]
        print(#line, rowData.dateOfSurvey.description)
        let dateFormatter : DateFormatter   = DateFormatter()
        dateFormatter.dateStyle             = DateFormatter.Style.medium
        
        cell?.textLabel?.text               = rowData.name
        cell?.detailTextLabel?.text         = "EMAIL\t: \(rowData.email)\nDOB\t: \(dateFormatter.string(from: rowData.age))\nSERVICE\t: \(rowData.serviceRating.toString())\nSATISFACTION\t: \(rowData.satisfactionRating.toString())\nSURVEY DATE:\t \(dateFormatter.string(from: rowData.dateOfSurvey))"
        
        return cell!
    }
}
