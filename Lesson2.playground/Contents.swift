import Foundation

var variable1 = 0
var variable2 = variable1
variable1 = 1
variable2

let intMax = Int.max // максимальное значение целого числа
let intMin = Int.min // минимальное значение целого числа

var double1: Double = 55
var double2 = 0.0
//var casted: Double (varInteger)

var boolean: Bool = false
// если к boolean добавить !, то он поменят её значение на противоположное
var oppositeboolean = !boolean

var string2 = "cool"
print ("String \(string2)")

var integer1 = 1
var integer2 = 2
var integer3 = integer1 + integer2

integer1 += 1
integer1 / integer2
// % деление без остатка

var integer4 = integer1 == integer2 ? 1:2
// присвоили значение 4, через равенство, если 1 = 2, то присваиваем 1 к интежер4
var integer5 : Bool
if boolean == true {
    integer4 = 1
} else {
    integer4 = 2
}
// тоже самое, что выше одной строкой описано




