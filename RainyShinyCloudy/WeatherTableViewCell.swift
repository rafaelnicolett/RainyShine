//
//  WeatherTableViewCell.swift
//  RainyShinyCloudy
//
//  Created by Rafael Nicoleti on 09/12/16.
//  Copyright © 2016 Rafael Nicoleti. All rights reserved.
//

import UIKit

class WeatherTableViewCell: UITableViewCell {

    @IBOutlet weak var imgTemperature: UIImageView!
    @IBOutlet weak var lblTypeRain: UILabel!
    @IBOutlet weak var lblDayWek: UILabel!
    
    @IBOutlet weak var lblTemperatureMin: UILabel!
    @IBOutlet weak var lblTemperatureMax: UILabel!
    
    func configureCell(forecast: Forecast) {
        lblTemperatureMin.text = "\(forecast.lowTemp)"
        lblTemperatureMax.text = "\(forecast.highTemp)"
        lblTypeRain.text = forecast.weatherType
        imgTemperature.image = UIImage(named: forecast.weatherType)
        lblDayWek.text = forecast.date
    }

}
