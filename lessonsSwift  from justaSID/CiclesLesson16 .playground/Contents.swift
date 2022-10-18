import UIKit
/*
//в отличии от условий циклы нужны чтобы проэтерировать вашу коллекцию, тоесть пройтись по всем её элементам или например по какому-то диапазону чисел.
let names = ["Anna", "Bob", "Sam", "Alex"]

//чтобы пройтись по всем элементам нашего массива мы естественно пишем ключевое слово for
for name in names {
    print("My name is \(name)")
}

for (index, name) in names.enumerated() {
    print("My name is \(name) my index is \(index)")
}

//так же мы можем использовать цикл чтобы пройтись по диапазону чисел для этого

let count = names.count
for inex in 0..<count {
    print(names,[index])
}

//так же можно поработать с элементами в обратном порядке
for item in(0...10).reversed() { //если убрать reversed то он выведет от 0 до 10

    print(item)
}
//так же можно работать не только с массивами но и со словарями
let people = ["anna": 12_18, "Bob": 12_30, "Sam": 12_23, "Alex": 10_80] //нижнее подчеркивание можно использовать для форматирования чисел и компилятор не будет выдавать нам никакой ошибки
for (name, number) in people {
    print("\(name) has got a telephone number \(number)")
}


//так же если мы не хотим использовать все значения или проходить по всем желементам

var items = [Int]()
for item in 1...10 where item % 2 == 0 {
    items.append(item)
}
items

//иногда мы хотим тобы цикл прошёл некоторое колво раз но совершненно никак не привлекать переменную которую мы создаем

for item in 1...6 {
    print("Hello")
}

//если вам необходимо задать шаг которым вы будете мерять и игнорировать остальные значения испоьзуйте конструкцию страйт

let distance = 42_195 //1000
let step = 786 //200
var controlPoints = [Int]()
//дальше мы пойдем по нашим контрольным точкам
for controlPoint in stride(from: 0, to: distance, by: step) {
    controlPoints.append(controlPoint)
}
controlPoints


controlPoints.removeAll()

for controlPoint in stride(from: 0, through: distance, by: step) {
    controlPoints.append(controlPoint)
}
controlPoints

*/

//Это всё что касается цикла for щас поговорим по поводу цикла while, если цикл for проходил у нас по какой-то коллекции то цикл while он работает по-другому у него две реализации

var number = 2
while number > 3 {
    number = Int.random(in: 0...20)
}

//есть ещё одна разновидность типа while это тип repeat while

repeat {
    print(number)
    number = Int.random(in: 0...20)

}while number > 3

//Информация для продвинутых

var names = ["A", "B","S", "Al"]
/*
var newNames = [String]()
names.forEach { //forEach замена for но только отличие в том что for- это самостоятельная конструкция а forEach - это как метод массива
    newNames.append($0 + "is my name")
}
newNames
*/
//в процессе работы нам моет понадобиться ыйти из цикла или прервать какое-то условие
for item in names {
    if item == "B" {
        break //выйти из цикла
    }
    print(item)
}

//И так же ключевое слово continue
for item in names {
    if item == "S" {
        continue //оно не выходит из цикла полностью как break а просто завершает текущую иттерацию цикла
    }
    print(item)
}

//КОНЕЦ УРОКА
