import UIKit
func snaiArray(_ array : [[Int]]) -> [Int] {
    let mainDimension = array.count
    var currentDimension = array.count
    var returnArray : [Int] = []
    move(xPosition: 0, yPosition: 0, mainDimension: mainDimension, currentDimension: currentDimension, array: array,returnArray: &returnArray)
    return returnArray
}

func move( xPosition : Int,yPosition : Int ,mainDimension : Int ,currentDimension : Int ,array : [[Int]] ,returnArray : inout [Int])  {
    if currentDimension == 1 {
        returnArray.append(array[yPosition][xPosition])
    }
    if currentDimension<1 {
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
    for number in stride(from:currentDimension-1, through: 1, by: -1) {
        returnArray.append(array[yPosition+currentDimension-1][xPosition+number])
    }
    // move up
    for number in stride(from: currentDimension-1, through: 1, by: -1) {
        returnArray.append(array[yPosition+number][xPosition])
    }
    move(xPosition: xPosition+1, yPosition: yPosition+1, mainDimension: mainDimension, currentDimension: currentDimension-2, array: array,returnArray: &returnArray)
}

var array5 = [
 [1,2,3,4,17],
 [5,6,7,8,18],
 [9,10,11,12,19],
 [13,14,15,16,20],
 [21,22,23,24,25]
]
print(snaiArray(array5))






