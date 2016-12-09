//
//  ViewController.swift
//  RainyShinyCloudy
//
//  Created by Rafael Nicoleti on 06/12/16.
//  Copyright © 2016 Rafael Nicoleti. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource   {

    @IBOutlet weak var lblToday: UILabel!
    @IBOutlet weak var lblTemperature: UILabel!
    @IBOutlet weak var lblCity: UILabel!
    @IBOutlet weak var imgTemperature: UIImageView!
    @IBOutlet weak var lblStatusTemp: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellWeather", for: indexPath) as! WeatherTableViewCell
            
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
}

