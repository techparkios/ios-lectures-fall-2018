//: [Previous](@previous)

//: # Optionals

//: В переменной может быть или хначение заданного типа, или nil
//: И компилятор это проверяет

import Foundation

class A {
    func printA() {
        print(10)
    }
    
    func a() -> Int {
        return 10
    }
}

var a: A? = nil
// пока там ничего нет, но можно написать вот так

a?.printA()
// ничего

a = A()

a?.printA()
// 10

// ?? для того, чтобы спастись

print(a?.a() ?? 25)
// 10

a = nil
print(a?.a() ?? 25)
// 10


//: ### Это называется unwrapping
if let aaaa = a {
    print(aaaa.a())
} else {
    print(25)
}


//: ### force unwrapped optonals

var aa: A! = nil

//aa.printA() // креш при работе, компилятор не ругается
aa?.printA()
// 10

aa = A()
aa.printA() // теперь значение есть

//: [Next](@next)
