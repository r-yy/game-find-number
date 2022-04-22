import Foundation
print("Компьютер загадал число от 1 до 250, тебе нужно его угадать!")
var randNumber = UInt8.random(in: 1...250)
var userNumber: String?
loop: while true {
    print("Введите число:")
    userNumber = readLine()
    guard let x = UInt8(userNumber!) else {
        print("Введите корректное число")
        continue
    }
    if x > randNumber {
        print("Загаданное число меньше!")
    } else if x < randNumber {
        print("Загаданное число больше!")
    } else {
        print("Угадал! Было загадано число - \(randNumber) \nХотите сыграть снова? (Да/Нет)")
    loopOne: while true {
            let newGame = readLine()
            switch newGame {
            case "Да", "да":
                randNumber = UInt8.random(in: 1...250)
                continue loop
            case "Нет", "нет":
                print("Игра окончена, приходи играть снова!")
                break loop
            default:
                print("Введите (Да) или (Нет)")
                continue loopOne
            }
        }
    }
}

