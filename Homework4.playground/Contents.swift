import Foundation

// Написать ряд функций одного объекта:
// 1. Функция принимающая 2 аргумента типа Int, сравнивает их значения и выводит в консоль результат сравнения в виде: "Аргумент 1 больше, чем Аргумент 2".

func arguments1 (arg1: Int, arg2: Int) {
    if arg1 > arg2 {
    "Аргумент 1 больше, чем Аргумент 2."
    } else{
        "Не больше"
    }
}
arguments1(arg1: 5, arg2: 4)


// 2. Функция получает 3 аргумента, если среди них хотя бы 2 аргумента равны, то выводит ответ в виде: "2 аргумента равны", противном случае выдать ответ "равных аргументов нет".

func arguments2 (arg3: Int, arg4: Int, arg5: Int) {
    if arg3 == arg4 || arg4 == arg5 || arg5 == arg3 {
        "2 аргумента равны"
    } else {
        "равных аргументов нет"
    }
}

arguments2(arg3: 5, arg4: 3, arg5: 10)


// 3. Функция получает опциональный Int аргумент, затем проверяет ее на nil: если есть значение - выводит его в консоль, если нет - выводит фразу "no value"

var number1: Int? = 23
var optionResult1 = number1 ?? 1

let number2: Int? = nil
let optionResult2 = number2 ?? 1


func optionArg2 (arg7: Int?) {
    if let arg7 = arg7 {
        arg7
    } else {
        "no value"
    }
}
optionArg2(arg7: nil)

