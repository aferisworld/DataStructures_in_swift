import UIKit

struct Queue {
    var arr:[Int] = []
    
    var head: Int? {
        return arr.first
    }
    
    var tail: Int? {
        return arr.last
    }
    
    
    mutating func enQueue(_ item: Int) {
        return arr.append(item)
    }
    
    mutating func deQueue() -> Int? {
        guard !isEmpty() else {
            return nil
        }
        let res = arr.first
        arr.removeFirst()
        return res
        
    }
    
    
    mutating func isEmpty() -> Bool {
        guard arr.count <= 0 else {
            return false
        }
        return true
    }
}

//*****Usage of a Queue*****
var queue = Queue()
queue.enQueue(1)
queue.enQueue(2)
queue.enQueue(3)
print(queue.arr)
print(queue.isEmpty())
let x = queue.deQueue()
print("DeQueued : ", x ?? -1)
print(queue.arr)
queue.enQueue(4)
print(queue.arr)
print(queue.head)
print(queue.tail)
