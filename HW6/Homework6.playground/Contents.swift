import UIKit

// 1. Описать функцию принимающую 2 аргумента String (word, line), которая с помощью цикла FOR считает сколько раз данное слово встречается в строке line

func twoArg (word: String?, line: String?) {
    var count = 0
    if let word = word, let line = line {
        let words = line.split(separator: " ")
        for amountOfWords in words {
            if amountOfWords == word{
                count += 1
            }
        }
        print (count)
    } else {
        print("Ошибка.")
    }
}
  
print (twoArg(word: "лето", line: "зима осень лето весна лето"))
print(twoArg(word: "лавировали", line: "Корабли лавировали лавировали не выловировали.")) //как добавить несколько разделителей, чтобы считало и запятые, и пробелы

// 2. Написать алгоритм с помощью цикла DO-WHILE который добавляет в массив [Int] элементы (можно одинаковые, можно рандомные) до тех пор, пока сумма элементов массива меньше 100

var arrayMuatable: Array <Int> = []
var randomNumber = 0
let randomInt = Int.random(in: 0...100)

repeat {
    arrayMuatable.append(randomInt)
    for newNumber in arrayMuatable {
       randomNumber += newNumber
    }
}
while randomNumber < 100

arrayMuatable.reduce(0, +) //больше 100, так как сначала добавляет, а потом проверяет?
print(arrayMuatable)

// 3. Написать 1 алгоритм сортировки элементов массива [Int]

let numberArray2 = [100,20,32,1,3,20_209]
let sortedArray = numberArray2.sorted(by: >)
print(numberArray2)
print(sortedArray)
