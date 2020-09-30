import UIKit

//1. Write a Swift program to check if two given arrays of integers have 0 as their first element.
//произвести проверку двух массивов(Int) являются ли их первые элементы нулями и вывести соответствующее сообщение в консоль.

func checkZero (arrayCheck1: [Int], arrayCheck2: [Int]) {
    if arrayCheck1[0] == 0 && arrayCheck2[0] == 0 {
        print("The first item of 2 arrays is 0.")
    } else if arrayCheck1 [0] == 0 {
        print("The first item of array1 is 0.")
    } else if arrayCheck2 [0] == 0 {
        print("The first item of array1 is 0.")
    } else {
        print ("Neither array1 nor array2 has 0 as the first item.")
    }
}

checkZero(arrayCheck1: [0,2,3,1,0,3], arrayCheck2: [20,0,12,9])

//2. Write a Swift program to test if an array of integers does not contain a 3 or a 5.
//произвести проверку двух массивов(Int) на отсутствие в них элементов 3 и 5 и вывести соответствующее сообщение в консоль

func contain3or5 (_ array1:[Int], _ array2: [Int]) {
    if (array1.contains(3) || array1.contains(5)) || (array2.contains(3) || array2.contains(5)) {
        print ("True.")
    } else {
        print("None of the arrays contain 3 or 5.")
    }
}
//как можно запринтовать, какое именно значение встретилось в массиве (3 или 5)
contain3or5([1,2,3], [4,5,6])


//3. Write a Swift program to check whether the first element and the last element of a given array of integers are equal.
//произвести проверку одинаковы ли первый и последний элементы данного массива(Int) и вывести соответствующее сообщение в консоль

func firstAndLast (_ array3: [Int]) {
    if array3.last == array3.first {
        print("The first and the last elements of an array are equal \(array3[0]).")
    } else {
        print("The first and the last elements of an array are different.")
    }
}

firstAndLast([3,2,9,10])
firstAndLast([120,83,29,120])

let firstLastArray = [2,1,0,4]
firstLastArray.first == firstLastArray.last ? print("The first and the last elements are equal.") : print ("The first and the last elements are different")

//4. Write a Swift program that creates Array, adds an item, remove item, modify item and then prints size of the array.
//проинициализировать массив, добавить в него элемент, удалить элемент, модифицировать какой-нибудь элемент и вывести в консоль размер массива(количество элементов)

var foodInFridge = ["Шоколад","Огурцы","Курица","Десяток яиц","Апельсин"]

func goTotheShop (currentPurchase: [String]) {
    foodInFridge += currentPurchase
}

func hadSnack () {
    foodInFridge.remove(at: 0)
}

//нашла алгоритм (ниже), который ищет значение и определяет его порядковый номер в массиве. Это для того, чтобы потом, зная порядковый номер элемента, мы смогли его модифицировать. Однако получаются разные типы элементов: индекс, который мы нашли [Int], а индекс, который можем вставить Int. Как преобразовать?

//func hadOmelet (currentEggsAmount: String) {
//    let indexOfEggs = foodInFridge.enumerated().filter {
//        $0.element.contains("яиц")
//    }.map{$0.offset}
//    foodInFridge [indexOfEggs] = currentEggsAmount
//}

foodInFridge [3] = "Пять яиц"

goTotheShop(currentPurchase: ["Грейпфрут", "Сельдерей"])
hadSnack()
foodInFridge.count

//5. Write a Swift program that creates Dictionary, adds an item, remove item, modify item and then prints size of the Dictionary.
//проинициализировать словарь, добавить в него элемент, удалить элемент, модифицировать какой-нибудь элемент и вывести в консоль размер словаря(количество элементов)

var priceList = [
    "shorts": 50,
    "skirt": 60,
    "t-shirt": 30
]

priceList ["sweater"] = 110
var saleOfskirts = priceList.updateValue(30, forKey: "skirt")
var soldOutOfT = priceList.removeValue(forKey: "t-shirts")

print (priceList.count)


//6. Write a Swift program that creates Set, adds an item and then prints size of the Set.
////проинициализировать Сет, добавить в него элемент и вывести в консоль размер Сета(количество элементов)

var soups: Set<String> = ["borscht","hodgepodge","broth","cream soup","ramen"]
soups.insert("tom yam")
print ("We have \(soups.count) types of soups in our menu.")

//7. Create 2 arrays, and merge them.
//проинициализировать 2 массива и объединить(можно в новом массиве)

var primeNumbers1 = [2,3,5,7,11,13]
var primeNumbers2 = [17,19,23,29,31,37]

primeNumbers1 += primeNumbers2
primeNumbers1.append(contentsOf: primeNumbers2)
var newPrime = primeNumbers1 + primeNumbers2

//8. Write a closure to sum 2 integers, pass closure as argument to function, where return the result of calling that closure.
//Написать замыкание(closure), задача которого складывать 2 полученных аргумента типа Int и вернуть его и вывести в консоль.

func attemptToClosure (arg1: Int, arg2: Int, handler: (Int, Int) -> Void) {
    handler (arg1, arg2)
}

let closureBody: (Int, Int) -> Void = { print ($0 + $1) }
attemptToClosure(arg1: 5, arg2: 550, handler: closureBody)

//9. Подготовить примеры:
var newArrayFeature1 = ["FIFA", "Mortal Kombat","Stalker"]
print (newArrayFeature1.map{$0.count})

print(newArrayFeature1.filter{$0.count < 8})
