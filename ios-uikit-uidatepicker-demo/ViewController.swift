//
//  ViewController.swift
//  ios-uikit-uidatepicker-demo
//
//  Created by k_motoyama on 2017/02/27.
//  Copyright © 2017年 k_moto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var datePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLocale()
        getLocal()
        setupDate()
        setupMaxDate()
        setupMinDate()
        setMinuteInterval()
    }
    
    // ロケールを取得する
    private func getLocal(){
        print(datePicker.locale!)
    }

    // ロケールを設定する
    private func setupLocale(){
        datePicker.locale = Locale(identifier: "ja_JP")
    }
    
    // 移動できる最大の日時を設定する
    private func setupMaxDate(){
        var maxDate = Date()
        maxDate.addTimeInterval(60 * 60 * 24 * 10)
        datePicker.maximumDate = maxDate
    }
    
    // 移動できる最小の日時を設定する
    private func setupMinDate(){
        var minDate = Date()
        minDate.addTimeInterval(-1 * 60 * 60 * 24 * 20)
        datePicker.minimumDate = minDate
    }
    
    // 分の表示間隔を設定する
    private func setMinuteInterval(){
        datePicker.minuteInterval = 30
    }
    
    // DatePickerの表示形式を変更する
    private func setDatePickerMode(){
        datePicker.datePickerMode = UIDatePickerMode.time
    }
    
    // 指定した日付にDatePickerを移動させる
    private func setupDate(){
        var date = Date()
        date.addTimeInterval(60 * 60 * 24)
        datePicker.setDate(date, animated: false)
    }

    // MARK: - @IBAction

    /// datePickerの値が変更されたら呼ばれる
    @IBAction func didValueChanged(_ sender: UIDatePicker) {
        print(createDateString(date: sender.date, calendar: sender.calendar))
    }

    // MARK: - 日時表示用メソッド

    /// 引数から日時の文字列を返す
    private func createDateString(date: Date, calendar: Calendar) -> String {

        let dateFormater = DateFormatter()
        dateFormater.locale = Locale(identifier: "ja_JP")
        let weekdayIndex = calendar.component(.weekday, from: date) - 1
        dateFormater.dateFormat = "M月d日 \(dateFormater.shortWeekdaySymbols[weekdayIndex]) H:mm"

        return dateFormater.string(from: date)
    }
}

