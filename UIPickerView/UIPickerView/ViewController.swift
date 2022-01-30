//
//  ViewController.swift
//  UIPickerView
//
//  Created by MacBook on 28.01.2022.
//

import UIKit

class ViewController: UIViewController {
    let picker = UIDatePicker()

    override func viewDidLoad() {
        super.viewDidLoad()
        picker.center = view.center
        picker.datePickerMode = .date
        self.view.addSubview(picker)
        
        //Таргет для отслеживания даты
        picker.addTarget(self, action: #selector(datePickerChange(paramDataPicker:)), for: .valueChanged)
        
        //Ограничиваем выбор даты
        var oneYearTime = TimeInterval()
        oneYearTime = 365 * 24 * 60 * 60
        
        let todayDate = Date()
        
        let oneYearFromToday = todayDate.addingTimeInterval(oneYearTime)
        let twoYearFromDate = todayDate.addingTimeInterval(2 * oneYearTime)
        
        picker.minimumDate = oneYearFromToday
        picker.maximumDate = twoYearFromDate
    }
    //Функция для отслеживания даты
    @objc func datePickerChange(paramDataPicker: UIDatePicker){
        if paramDataPicker.isEqual(self.picker) {
            print("dateChange: = ", paramDataPicker.date)
        }
    }
}

