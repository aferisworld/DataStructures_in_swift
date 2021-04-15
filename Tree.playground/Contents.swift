import UIKit

class Node<T> {
     var value: T
    
    var children: [Node<T>]
    weak var parent: Node<T>?
    
    init(_ value: T) {
        self.value = value
        self.children = []
    }
    
    func addChild(_ node: Node<T>) {
        self.children.append(node)
        node.parent = self
    }
}

//***Usage****
let foods = Node<String>("Ingredients")

// we create a structure to represent Fruits
let fruits = Node<String>("Fruits")
fruits.addChild(Node<String>("Apple"))
fruits.addChild(Node<String>("Banana"))
fruits.addChild(Node<String>("Citrus"))

// we create other structure for food items
foods.addChild(Node<String>("Vegetables"))
foods.addChild(Node<String>("Meat"))
foods.addChild(fruits)

func preOrderTraversal(_ node: Node<String>, level: Int = 0) {
    
    print("Node: \(node.value), Level: \(level)")
    for item in node.children {
       // print("item \(item.value), level: \(level + 1)")
        preOrderTraversal(item, level: level + 1)
    }
}

print("***preOrderTraversal***")
preOrderTraversal(foods, level: 0)

func postOrderTraversal(_ node: Node<String>, level: Int = 0) {
    for item in node.children {
        preOrderTraversal(item, level: level + 1)
    }
    print("Node: \(node.value), Level: \(level)")
    
}

print("***postOrderTraversal***")
postOrderTraversal(foods, level: 0)
