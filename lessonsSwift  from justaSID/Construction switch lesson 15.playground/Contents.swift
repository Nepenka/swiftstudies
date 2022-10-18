import UIKit

var name = ["Alice", "Bob", "Sid", "Margo"]
var optionalName = name.randomElement()

if let name = optionalName{
    switch name { //конструкция switch должна быть исчерпывающей и там должны быть обработаны все возможные случаи и чтобы эо работало мы должны добавить конструкицю default
    case "Sid": print("the name is Sid")
        //fallthrough
    case "Alice": print("the name is Alice")
    case "Bob": print("the name is Bob")
    case "Margo": print("the name is Margo")
    default:
        print("other names")
    }
    //в некоторых кейсах бывают случаи когда нам надо обработать, для нескольких кейсов, один и тот же код
    switch name{
    case "Sid", "Bob":
        print("the male names")
    case "Alice", "Margo":
        print("the female names")
    default:
       break //print("other names") в том случае когда нам тут нечего писать мы можем просто прописать конструкцию break
    }
}
//Так жже мы можем использовать конструкцию switch для проверки числа входящих в диапазон значений
var distance = Int.random(in: 1...100)
switch distance{
case 1...50: print("enough close")
case 51...100: print("oh, it so far")
default:
    print("i dont know that distance")
}

//так же можно использовать кортежи для одной и той же конструкции switch
let statusCode = (200, "ok")
switch statusCode{
case (200, "ok"): print("Success")
case (404, "page not found"): print("failure")
case (_, "ok"): print("description withot code") //так же можно использовать нижнее подчеркивание чтобы показать что любое значение будет удовлетворять данному случаю
    case (200, _ ): print("code withot discription")
default:
    break
}


//так же внутри конструкции switch можно связывать значения
switch statusCode{
case (200, let description): print(description)
case (let code, "ok"): print(code)
case let (code ,description): print(code,"" ,description)
default:
    break
}

//В некоторых случаях нам могут понадобиться дополнительные условия
let someNumber = Int.random(in: 1...100)
switch someNumber{
case 1...50 where someNumber % 2 == 0: print("nimber can be divinded by 2")
case 50...100 where someNumber % 3 == 0: print("number can be divided by 3")
default: break
}


let a: Double? = nil
switch a {
case nil: print("is nothing")
case let b: print(b)
default:
    break
}
//В работе мы будет ччаще всего использовать то что находится ниже, а именно материал для продвинутых

enum SomeEnum{
    case one
    case two
}
var some = SomeEnum.one
 //сейчас наша конструкция switch является полноценной 
switch some{
case.one:
    break
case.two:
    break
}
