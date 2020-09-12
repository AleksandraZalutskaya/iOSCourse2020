import Foundation
/*:
 # ЗАДАНИЕ:
*/

// В своем файле Playground:
// 1. Проинициализируйте константу типа Int с каким-либо значением
let constant1: Int = 9
let constant2 = 8

// 2. Проинициализируйте переменную типа Int с каким-либо значением
var variable1: Int = 1
var variable2 = 2

// 3. Проинициализируйте переменную типа Int со значением, равным сумме ранее созданной константе и переменной
var variable3 = constant1
var variable4 = variable2

// 4. Задайте новое значение переменной, созданной в п.3, равное произведению константы из п.1 и переменной из п.2
variable4 = constant2*variable1

// 5. Проинициализируйте переменую типа Double с каким-либо значением
var double1: Double = 32.0
var double2 = 4.98

// 6. Проинициализируйте переменную типа Bool с рузьтатом сравнения константы из п.1 и переменной из п.2
var boolean: Bool = constant2 < variable1
var boolean1: Bool = constant1 > variable2

// 7. Проинициализируйте переменую типа String с каким-либо значением
var variable5: String = "Курсы"
var variable6 = "Саша"

//7. Получение модуля числа
var negative1 = -35
var mod1: Int
if negative1 > 0 {
    mod1 = negative1
}else {
    mod1 = negative1 * -1
}

var negative2 = -98.7
var mod2 = abs(negative2)

//8. Округление чисел

var variable7 = 56.1234
var round1 = round(variable7) // обычное округление
var round2 = ceil(variable7) //до следующего большего числа
var round3 = floor(variable7) //до следующего меньшего числа


