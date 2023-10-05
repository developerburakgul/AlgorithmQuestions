import UIKit
func snail(_ array : [[Int]]) -> [Int] {
    var currentDimension = array.count
    var returnArray : [Int] = []
    move(xPosition: 0, yPosition: 0, currentDimension: currentDimension, array: array, returnArray: &returnArray)
    return returnArray
}
func move(xPosition : Int ,yPosition : Int,currentDimension : Int,array : [[Int]],returnArray : inout [Int]) {
    if currentDimension == 1 {
        returnArray.append(array[xPosition][yPosition])
    }
    if currentDimension < 1 {
        return
    }
    // move right
    for number in 0..<currentDimension-1 {
        returnArray.append(array[yPosition][xPosition+number])
    }
    // move down
    for number in 0..<currentDimension-1 {
        returnArray.append(array[yPosition+number][xPosition+currentDimension-1])
    }
    // move left
    for number in stride(from: currentDimension-1, to: 0, by: -1) {
        returnArray.append(array[yPosition+currentDimension-1][xPosition+number])
    }
    // move up
    for number in stride(from: currentDimension-1, to: 0, by: -1) {
        returnArray.append(array[yPosition+number][xPosition])
    }
    move(xPosition: xPosition+1, yPosition: yPosition+1, currentDimension: currentDimension-2, array: array, returnArray: &returnArray)
}
var array5 = [
 [1,2,3,4,17],
 [5,6,7,8,18],
 [9,10,11,12,19],
 [13,14,15,16,20],
 [21,22,23,24,25]
]
print(snail(array5))






