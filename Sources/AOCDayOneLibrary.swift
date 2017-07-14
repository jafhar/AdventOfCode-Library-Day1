import Foundation

//Mark: Turn left or right.Consider left=-1 and right =1
private enum Turn:Int {
    
    case right = 1
    case left = -1
    
}

//Mark: Direction
private enum Direction:Int {
    
    case north = 0
    case east
    case south
    case west
    
}

//Mark: Postion
private struct Position {
    
    var directionToHead = Direction.north
    var point = (x:0, y:0)
    
}

//Mark: Day1 Part1
public func shortestDistanceFor(inputString input:String) -> Int {
    
    //Results ["L1","L2","R1", "L3", "R5", "L6", ]
    let resultInputArray:[String] = input.components(separatedBy: ", ")
    
    let initialPosition = Position()
    let finalPosition = resultInputArray.reduce(initialPosition,{(result:Position, element:String) -> Position in
        var resultPosition = result
        
        let turn = element.substring(to: element.index(input.startIndex, offsetBy: 1)) == "L" ? Turn.left.rawValue : Turn.right.rawValue
        
        let distanceToMove = Int(element.substring(from: element.index(element.startIndex, offsetBy: 1)))
        
        let facingTowards = Direction(rawValue: ((turn+resultPosition.directionToHead.rawValue+4) % 4))
        
        if let directionToHead = facingTowards, let distance = distanceToMove {
            
            resultPosition.directionToHead = directionToHead
            
            switch directionToHead {
            case Direction.north: resultPosition.point.y += distance
            case Direction.south: resultPosition.point.y -= distance
            case Direction.east: resultPosition.point.x += distance
            case Direction.west:resultPosition.point.x -= distance
            }
        }
        return resultPosition
    })
    
    return abs(finalPosition.point.x)+abs(finalPosition.point.y)
    
}


//Mark: Day1 part2
public func distanceToFirstRevisitedLocationIn(inputString input:String) -> Int {
    
    let resultInputArray:[String] = input.components(separatedBy: ", ")
    let initialPosition = Position()
    var visitedLocationArray:[String] = []
    var finalPosition = initialPosition
    
    for element in resultInputArray {
        let turn = element.substring(to: element.index(input.startIndex, offsetBy: 1)) == "L" ? Turn.left.rawValue : Turn.right.rawValue
        
        let distanceToMove = Int(element.substring(from: element.index(element.startIndex, offsetBy: 1)))
        
        let facingTowards = Direction(rawValue: ((turn+finalPosition.directionToHead.rawValue+4) % 4))
        
        if let directionToHead = facingTowards, let distance = distanceToMove {
            finalPosition.directionToHead = directionToHead
            
            let revisited = { () -> Bool in
                for _ in 1...distance {
                    
                    switch directionToHead {
                    case Direction.north: finalPosition.point.y += 1
                    case Direction.south: finalPosition.point.y -= 1
                    case Direction.east: finalPosition.point.x  += 1
                    case Direction.west:finalPosition.point.x  -= 1
                    }
                    
                    if visitedLocationArray.contains("\(finalPosition.point)") {
                        return true
                    } else {
                        visitedLocationArray.append("\(finalPosition.point)")
                    }
                }
                return false
            }
            
            if revisited() {
                return abs(finalPosition.point.x)+abs(finalPosition.point.y)
            }
        }
    }
    
    return abs(finalPosition.point.x)+abs(finalPosition.point.y)
}
