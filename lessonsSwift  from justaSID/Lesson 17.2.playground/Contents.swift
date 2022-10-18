import Foundation

//Здесь мы продолжаем разбирать функции
func multiply(_ number: Int , times: Int = 2) -> Int {
    var stepMultiply = number
    for _ in 2...times {
        stepMultiply *= number
        
    }
    return stepMultiply
}
let someNumber = multiply(2)
let someNumber2 = multiply(3, times: 3)

//правилом хорошего тона в программировании является размещать значения у которых нет параметров в начале потому что они считаются самыми важными

//Щас мы с вами рассмотрим вариативные параметров для функции
//допустим у нас будет функция которая будет итерировать какое-нибудь значение
func iterateSomeValues(numbers:Double...){
    //и для того чтобы указать number вариативным типом нам надо поставить три точки
    if numbers.isEmpty{
        print("parameter is Empty")
        return //мы можем написать return даже если тело ничего не возвращает и тогда мы просто прекратим выполнение нашей функции и вернемся в точку её вызова
    }
    
    for item in numbers {
        print(item)
    }
}
iterateSomeValues(numbers: 1,2,3,4,5,6,7,8)


//щас мы ещё рассмотрим что такое сковозные параметры

func changeValue(value: inout Double) {
    value = 5
}
var a = 1.0
changeValue(value: &a) //и в этот раз мы передаем не значение а ссылку на нашу переменую на что нам указывает знак аперсанта так же нельзя передать сюда какой-то числовой литерал
//опять же почему нельзя передавать туда литерал, да всё очень просто потому что мы сюда передаем адрес памяти на переменную которую мы храним и если для константы память зарезервированна строго то там значения нельзя изменить и для числового литтерала память выделяется ещё другим способом и опять же мы не имеем доступа для изменения
print(a)

func swapTwoValues(a: inout Int, b: inout Int){
    /*
    let temp = a
    a = b
    b = temp
     */
    a += b
    b = a - b
    a = a-b
}
var a1 = 7
var b1 = 19
swapTwoValues(a: &a1, b: &b1)
a1
b1
//практическое задание которое иногда спрашивают, как сделать так чтобы эти два значения менялись значениями без введения 3-тей переменной


//напоследок ещё одна практическая задача которую иногда спрашивают
func getFibonachiValue(number: Int) -> Int {
    var first = 0
    var second = 1
    var temp = 0
    
    //так же воспользуемся цмком
    for _ in 3...number {
        temp = first + second
        first = second
        second = temp
    }
    return temp
}
getFibonachiValue(number: 5)
