//: Playground - noun: a place where people can play

import UIKit

// ## 1. 自分の名前をString型で`name`という名前の定数で宣言してください。(なお、名字と名前の間には半角スペースをいれてください。)
let name: String = "椎木 亮成"

// ## 2. `name`を分解して、`name`の名字と名前を要素とするString型の`characters`という配列をつくってください。
let characters: [String] = name.characters.split(separator: " ").map( String.init )
// http://stackoverflow.com/questions/25678373/swift-split-a-string-into-an-array

// ## 3. `name`から2番目の文字だけを取り出して、`character`という名前の定数をつくってください。
let character: String = String(name[name.characters.index(after: name.startIndex)])

// ## 4. 1~3を要素とするInt型の`numbers`という名前の配列を定数で宣言してください。
let numbers: [Int] = [1, 2, 3]

// ## 5. `numbers`を使って、`numbers`と要素の順番が反対の配列を`reverseNumbers`という名前でつくってください。
let reverseNumbers: [Int] = numbers.reversed()

// ## `numbers`のすべての要素に1を足した`plusOne`という配列を`numbers`をつかってつくってください。
let plusOne: [Int] = numbers.map({ $0 + 1 })

// ## 7. `numbers`の要素の中で奇数の要素だけを取り出した配列`odds`を`numbers`を使ってつくってください。
let odds: [Int] = numbers.filter({ $0 % 2 == 1 })

// ## 8. `optionalInteger`というInt?型の定数を`nil`で宣言してください。
let optionalInterger: Int? = nil

// ## 9. `if let`文と`guard let`文それぞれで`optionalInteger`をIntにアンラップした`integerIfLet`と`intergerGuardLet`という定数を宣言してください。(なお、guard文についてはコメントアウトしてください。)
if let intergerIfLet: Int = optionalInterger { }

//guard let intergerGuardLet: Int = optionalInterger else { break }

// ## 10. Date型のextesionを作成し、今の日時を`2017年1月29日 日`というString型の表記で表示するextensionをつくってください。

extension Date {
    
    func format() -> String {
        
        let formatter: DateFormatter = DateFormatter()
        formatter.locale = Locale(identifier: "ja")
        formatter.dateFormat = "yyyy/MM/dd"
        
        var calendar: Calendar = Calendar(identifier: .gregorian)
        calendar.locale = Locale(identifier: "ja")
        let weekdayIndex: Int = calendar.component(.weekday, from: self)
        let weekday: String = calendar.shortWeekdaySymbols[weekdayIndex]
        return formatter.string(from: self) + weekday
    }
}

let day: String = Date().format()