# UIDatePicker

## 概要
UIDatePickerは、DatePickerを操作するために利用します。<br>
ピッカーを使用して、暦日、時間値、または時間間隔のいずれかをユーザーが入力できるようにします。

## 関連クラス
UIControl, NSCoding

## 主要プロパティ

|プロパティ名|説明|サンプル|
|---|---|---|
|locale | ロケールを設定する | datePicker.locale = Locale(identifier: "ja_JP") |
|maximumDate | 移動できる最大の日時を設定する | datePicker.maximumDate = date.addTimeInterval(60 * 60 * 24 * 10) |
|minimumDate | 移動できる最小の日時を設定する | datePicker.minimumDate = date.addTimeInterval(-1 * 60 * 60 * 24 * 20) |
|minuteInterval | 分の表示間隔を設定する | datePicker.minuteInterval = 30 |
|datePickerMode | DatePickerの表示形式を変更する | datePicker.datePickerMode = UIDatePickerMode.time |

## 主要メソッド

|メソッド名|説明|サンプル|
|---|---|---|
|setDate | 指定した日付にDatePickerを移動させる<br>移動させる時にアニメーションをつけるか設定する | datePicker.setDate(Date(), animated: false) |

## フレームワーク
UIKit.framework

## サポートOSバージョン
iOS2.0以上

## 開発環境
|category | Version| 
|---|---|
| Swift | 3.0.2 |
| XCode | 8.2 |
| iOS | 10.0〜 |

## 参考
https://developer.apple.com/reference/uikit/uidatepicker
