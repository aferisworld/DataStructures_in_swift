import UIKit

struct Stack {
    var arr:[Int] = []
    
    mutating func push(_ item:Int) {
            arr.append(item)
    }
    
    mutating func pop() -> Int? {
        return arr.popLast()
    }
    
    mutating func peek() -> Int? {
        return arr.last
    }
    
    mutating func isEmpty() -> Bool {
        if arr.count == 0 {
            return true
        }
        return false
    }
    
}

//*****Usage*****
var stack = Stack()
stack.push(1)
print("Peek: ", stack.peek() ?? -1)
stack.push(2)
print("Peek: ", stack.peek() ?? -1)
stack.push(3)
print("Peek: ", stack.peek() ?? -1)
stack.push(4)
print("Peek: ", stack.peek() ?? -1)
stack.push(5)
print(stack.arr)
print("IsEmpty :", stack.isEmpty())
print("Peek: ", stack.peek() ?? -1)
stack.pop()
stack.pop()
print("Peek: ", stack.peek() ?? -1)



//Generic Stack
struct GenericStack<T> {
    var arr:[T] = []
    
    mutating func push(_ item:T) {
            arr.append(item)
    }
    
    mutating func pop() -> T? {
        return arr.popLast()
    }
    
    mutating func peek() -> T? {
        guard let top = arr.last else {
            return nil
        }
        return top
    }
    
    mutating func isEmpty() -> Bool {
        if arr.count == 0 {
            return true
        }
        return false
    }
    
}

//****Usage of Generic Stack
var genericStack = GenericStack<Any>()
genericStack.push("One")
print("Peek: ", genericStack.peek() ?? -1)
genericStack.push(2)
print("Peek: ", genericStack.peek() ?? -1)
genericStack.push("Three")
print("Peek: ", genericStack.peek() ?? -1)
genericStack.push(4)
print("Peek: ", genericStack.peek() ?? -1)
print(genericStack.arr)
print("IsEmpty :", genericStack.isEmpty())
print("Peek: ", genericStack.peek() ?? -1)
genericStack.pop()
genericStack.pop()
print("Peek: ", genericStack.peek() ?? -1)


