import UIKit

//На этом уроке мы вспоминаем конструкцию свифт и тернарный оператор, урок должен быть не сложным
//var temperature = 20 -условие
/*
if temperature > 15 {
    print("Very nice day, i think can go for a walk")
}else{
    print("Very bad, now i want suck dick")
}

if temperature > 25 {
    print("so hot ")
}else{
    print("temperature is comfortable")
}
*/

//Так же частно встречается такое когда мы хотим проверить несколько условий
/*
if temperature > 25{
    print("so hot")
} else if temperature > 15 {
    print("temperature is comfortable")
} else{
    print("very cold weather")
}                 //теперь мы хотим проверить ещё одно условие которое включать в себя не все остальные случаи а какой-то другой

//Самое интересное что когда программа попадает в любой из этих блоков кода, то она после выполнения программы, выходит из всей конструкции if полностью. После выполнения программы эти блоки повторяться друг за другом больше не будут
var theWeatherIsGoood = true
if theWeatherIsGoood{ //== true <- вот это писать не надо, так как у нас переменная bool типа и она возвращает сама по себе true или false
    print("The weather is good")
}
*/


//Рассмотрим другой пример
/*
let year =  1998 //2007
if year > 2014 {
    print("So close")
}else if year > 2000 && year <= 2014{
    print(" It was some years ago ")
}else if year == 1999  || year < 1990 {
    print("I can't remember it")
} else{
    print("other years")
}
*/

//Вспомним с чем ещё периминяется оператор if,через конструкцию if можно производить
/*
let a: Int? = 5 //nil //15 //<-
 
if let someInt = a{ //мы написали оператор if указали константу let которая равна у нас 15 как мы можем видеть здесь ->; и просто вывели её
    print(someInt)
}else {
    print("Can't get some value from a")
}


if let a = a {
    print(a)
}else {
    print("Can't get some value from a")
}

//Так же мы можем развернуть ни одну какую-то переменную но и ещё одну вместе с ней
let b: Int? = nil //55
if let a = a, let b = b{ //Если в первой переменной будет true то у нас все сработает, а если же в первой переменной мы не сможем достать значение, то код через запятую не будет работать
    print(a,b)
}else if let a = a{
    print(a)
}else if let b = b {
    print(b)
}else{
    print("all values are nil")
}
*/
//Вспомним что такое тирнарный оператор
var temperature = 23//10 //25
var theWeatherisGood = temperature >= 25 ? "weather is hot" : (temperature <= 25 && temperature > 15) ? "weather is warm " : "weather is cold"//"weather is cold "
//но хочется заметить что настолько длинная запись не так просто читается 

//в итоге при упрощении кода у нас получается вот такая запись
/*
if temperature >= 25{
    theWeatherisGood = true
}else{
    theWeatherisGood = false
}
 */
//А сейчас мы попробуем упростить этот блок if
