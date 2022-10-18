import UIKit

//сегодня мы разберем что такое функции
//функции - это самостоятельный блок кода который можно использовать в лбом месте в программе. Чаще всего функции имеют усконаправленную задачу. каждая функция имеет имя и конечно же имя должно быть уникальным
//func functionName(argumentLable parametrName: Type) -> Type дальше мы пишем струлочку которая нам будет возврашать поределенный тип
// argumentLabel - это имя аргумента функции, parametrName - это имя параметра функции
//имя аргумента будет использоваться при вызову, а параметр функции будет использоваться внутри тела функции

func showName(name:String) -> Void{
    print("your name is \(name)")
}
showName(name: "Sid") //попрошу заметить что если тип возвращаемого значения не указан, то по-умолчанию он возвращает тип Void что равносильно пустоте, ну или так же можно написать простые круглые скобки


func addTwoInts(operand1: Int, operand2: Int) -> Int {
    let summ = operand1 + operand2
    return summ
    
}
let a = addTwoInts(operand1: 5, operand2: 6) //так же значения нашей функции мы можем присвоить какой-либо переменной
print(a)


//Так же функции могут быть созданы вообще без параметров


func simonSays() {
    let phrases = ["pharases1", "phrases2","phrases3", "phrases4", "phrases5"]
    let currentPhrase = phrases[Int.random(in: 0..<phrases.count)]
    print(currentPhrase)
}
simonSays()


//щас объявим функцию для егенерации пароля для учетной записи
//давайте попробуем сделать проверку на винтность, например мы не хотим чтобы генерировались какие-нибудь числа или буквы мы хотим придумать метод какой-нибудь
func isValidpassword(password:String) -> Bool {
    return password.contains("1")
}
func generatePassword() {
    let symbols = "1234567890qwertyuiop"
    var password = ""
    
    for _ in 0...7 {
        let index = Int.random(in: 0..<symbols.count)
        password.append(symbols[symbols.index(symbols.startIndex, offsetBy: index )])
    }
    if isValidpassword(password: password) {
        print("\(password) is valid password")
    }else{
        print("\(password) is bad password")
    }
//Чем же этот метод отличается от предыдущих? Мы показываем что мы можем внутри одной функции вызвать другую функцию, так же уникальной долна быть вся сигнатура функции а не её половину
}
generatePassword()

func someFunc() {}
func someFunc(parametr1:Double, parametr2: Int) {} //если без вписывания типа в оду из них они будут считаться одинаковыми, но как только мы вписываем в параметры что-то то компилятор вопринимает их как разные

//так же если необходимо мы можем проигнорировать возвращаеммое значение в функции


func returnTrue() -> Bool {
    return true
}
returnTrue()
let aa = returnTrue()
let _ = returnTrue() //с помоью нижнего подчеркивания как мы уже делали мы можем проигнорировать выполнение данной функции. С помощью нижнего подчеркивание сделать так чтобы значение функции не использовалась нигде, но значение этой функции использовать

//Так же есть функции которые мало того что могут принимать данные функции так и возввращать данные функции в таком случае в случае возвращаемого типо надо использовать кортеж

func finMinMaxValue(in array: [Int]) -> (min: Int, max: Int)? {
    if array.isEmpty { return nil }
    var min = array [0]
    var max = array[0]
    for item in array {
        if min > item {
            min = item
        }
        if max < item {
            max = item

        }
    }
    return (min,max)
}
let pairs = finMinMaxValue(in: [1,2,3,4,5,6,7,8,9,10])
print(pairs?.max)
print(pairs?.min)


//Текущая имплементация метода - это реализация


//можно возвращать не только обычные цели но и опциональные
