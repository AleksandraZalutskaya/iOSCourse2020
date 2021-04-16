import UIKit

// Implement Quick or Merge sort

//Merge Sort
//Spliting an array to sort and merge later

func mergeSort (array: [Int]) -> [Int] {
    
    guard array.count > 1 else { //проверяем на кол-во символов, если их меньше 1, то нет смысл выполнения функции
        return array
    }
//создаем разделитель, который создает новые массивы, где изначально 1 значение из неотсортированного
    let leftArray = Array(array[0..<array.count/2])
    let rightArray = Array(array[array.count/2..<array.count])
    
    return merge(left: mergeSort(array: leftArray), right: mergeSort(array: rightArray))
}

func merge (left: [Int], right: [Int]) -> [Int] {
    var left = left
    var right = right
    var mergedArray: [Int] = []
//а здесь уже сверяем 1-ые значения массивов слева и справа и объединяем отсортированные
    while left.count>0 && right.count>0 {
        if left.first! < right.first! {
            mergedArray.append(left.removeFirst())
        } else {
            mergedArray.append(right.removeFirst())
        }
    }
    
    return mergedArray + left + right //добавляем на всякий случай, если какой-то массив (левый/правый) уже пустой
}

print (mergeSort(array: [40,39,201,1,20,3,20,30857,0,1285,45]))

// Write Algorithm to check if two rectangles overlap with each other

class Rectangle1 {
    var ax = 4
    var ay = 5
    var bx = 11
    var by = 8
}

class Rectangle2 {
    var cx = 1
    var cy = 6
    var dx = 4
    var dy = 7
}

func overlapCheck (ax: Int, ay: Int, bx: Int, by: Int, cx: Int, cy: Int, dx: Int, dy:Int) -> Bool {
    
    if ((((ax >= cx && ax <= dx) || (bx >= cx && bx <= dx)) && ((ay >= cy && ay <= dy))) ||
        (((cx >= ax && cx <= bx) || (cx >= ax && cx <= bx)) && ((cy >= ay && cy <= by)))) ||
        
        ((((ax >= cx && ax <= dx) || (bx >= cx && bx <= dx)) && ((cy >= ay && cy <= by) || (dy > ay && dy <= by))) ||
        (((cx >= ax && cx <= bx) || (cx >= ax && cx <= bx)) && ((ay >= cy && ay <= dy) || (by >= cy && by <= dy)))) {
        print (true)
    }
    
    
    
    return false
}

overlapCheck(ax: 4, ay: 5, bx: 11, by: 8, cx: 1, cy: 6, dx: 4, dy: 7)
overlapCheck(ax: 1, ay: 1, bx: 2, by: 2, cx: 3, cy: 3, dx: 4, dy: 4)



// data structures:
// binary tree
// linked list https://www.geeksforgeeks.org/linked-list-vs-array/
// https://www.raywenderlich.com/947-swift-algorithm-club-swift-linked-list-data-structure
