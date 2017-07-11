import Foundation
import Cocoa

//Turn left or right.Consider left=-1 and right =1
enum Turn:Int {
    
    case right = 1
    case left = -1
    
}

enum CompassPoint:Int {
    
    case north = 0
    case east
    case south
    case west
    
}

struct Position {
    
    var directionToHead = CompassPoint.north
    var point = (x:0, y:0)
    
}

public func findShortestDistance(inputString input:String) -> Int {
    
    //Results ["L1","L2","R1", "L3", "R5", "L6", ]
    let resultInputArray:[String] = input.components(separatedBy: ", ")
    
    let initialPosition = Position()
    let finalPosition = resultInputArray.reduce(initialPosition,{(result:Position, element:String) -> Position in
        var resultState = result
        
        let turn = element.substring(to: element.index(input.startIndex, offsetBy: 1)) == "L" ? Turn.left.rawValue : Turn.right.rawValue
        
        let distanceToMove = Int(element.substring(from: element.index(element.startIndex, offsetBy: 1)))
        
        let resultantDirection = CompassPoint(rawValue: ((turn+resultState.directionToHead.rawValue+4) % 4))
        
        if let directionToHead = resultantDirection, let distance = distanceToMove {
            
            resultState.directionToHead = directionToHead
            
            switch directionToHead {
            case CompassPoint.north: resultState.point.y += distance
            case CompassPoint.south: resultState.point.y -= distance
            case CompassPoint.east: resultState.point.x += distance
            case CompassPoint.west:resultState.point.x -= distance
            }
        }
        return resultState
    })
    
    return abs(finalPosition.point.x)+abs(finalPosition.point.y)
}

