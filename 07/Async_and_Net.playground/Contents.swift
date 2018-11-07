import UIKit

var str = "Hello, playground"

var value = 1

DispatchQueue.main.async {
    value += 1
    print(value)
}

print(value)


var value1 = [String]()

let group = DispatchGroup()

group.enter()
DispatchQueue.main.async(group: group) {
    value1.append("1")
    group.leave()
}

group.enter()
DispatchQueue.main.async(group: group) {
    value1.append("1")
    group.leave()
}

group.enter()
DispatchQueue.main.async(group: group) {
    value1.append("1")

    group.leave()
}

group.notify(queue: DispatchQueue.main) {
    print(value1)
}

