import UIKit
/*
//Множества это такая же коллекция как и массив,они так же как и массивы хранят значения одного типа,но отличие в том что массивы могут хранить повторяющиеся элементы, а множества уже так не могут
//var array = [1,2,1]
//var set: Set = [1,2,1]

//Для того чтобы изменить множество
var names = Set<String>() //Таким образом мы создали пустое множество names
var otherNames: Set<Int> = []
var someSet: Set = [1,2,3,4,5] //мы можем инициализировать множество только литералами массива и никак иначе
//Узнаем кол-во элементов которые хранятся в этом множетсве
someSet.count
names.count
otherNames.count

//проверка нашего множества на его пустоту
someSet.isEmpty
names.isEmpty
/*
names.insert("Sid")
names.insert("Nensi")
names.insert("Garold")
names.insert("Peter")
names.insert("Natasha")
names.count
//Теперь удалим из множетва
let name = names.remove("Garold")
type(of: name)
names.remove("Vasiliy")
*/
//Так же мы можем пропустить это множество через цикл
/*
for item in names.sorted(){
    print(item)
}
 */
//при удалении чего-то из множество через функцию removeFirst будет удалятся не первый элемент а абсолютно рандомный, так же как и сейчас каждый раз порядок в множестве после перезапуска программы он будет меняться, но если мы хотим их получить в каком-то определенном порядке, мы должны добавить метод sorted



//А сейчас обсудим то что мы конкретно можем делать с множествами, а конкретно, комбинирование двух множеств или определенние общих значений двух множеств
 
let oneSet: Set = [1, 3, 5, 7, 9]
let twoSet: Set = [2, 4, 6, 8, 10]
let threeSet: Set = [1, 2, 5, 8]

/*
//начнем с объединения
oneSet.union(twoSet) //Объединение
oneSet.intersection(threeSet) //это шоб искать общие элементы
//oneSet.intersection(twoSet)
//Теперь давайте образуем множество которое не будет содержать общих элементов
oneSet.symmetricDifference(threeSet) //а этот метод исключает из множества одинаковые элементы, ну вот как мы видим у нас и убрались 1 и 5 которые были общие и там, и там
oneSet.subtracting(threeSet) //а вот это он нам показывает элементы которые есть в oneset, но которых нет во threeset
*/



//Сейчас погворим про взаимосвязь и равенство множеств
let superSet: Set = [1,2,3,4,5,6,7,8,9,10]
oneSet == oneSet //Здесь мы провели проверку все ли значения в множестве 1 содержатся во втором
oneSet == twoSet
oneSet.isSubset(of: twoSet) //Здесь мы можем увидеть все ли значения множества находятся в этом множестве
oneSet.isSubset(of: superSet)
superSet.isSuperset(of: twoSet)
superSet.isSuperset(of: oneSet) //Он показывает что множество superSet является надмножеством множества oneSet
oneSet.isStrictSubset(of: superSet) //Этот метод покажет нам что oneSet является подмножеством superSet но при этом они не являются равными между собой
superSet.isStrictSuperset(of: twoSet) //И он нам покажет явялется ли superset надмножествои twoSet но при этом не равным ему
//Но что если мы у самого себя попытаемся вызвать такой метод? Он возвращает нам false потому что они между собой будут равны
oneSet.isStrictSuperset(of: oneSet)
*/


//На сегодня для чайников всё, дальше продвинутый уровень!!!!!

var someSet: Set<Int> = [1,2,3,43,5,6] //Вот этот тип Int он должен быть хэшированным, он должен предоставлять возможность для собственного вычисления хэша

//щас создадим какой-нибудь свой тип, свою структуру
class StarShip: Hashable {
    let name: String
    let model: String
    init(name: String, model: String){
        self.name = name
        self.model = model
    }
    func hash(into hasher: inout Hasher) {
        hasher .combine(name)
        hasher.combine(model)
    }
    static func == (lhs: StarShip, rhs: StarShip) -> Bool{
        return lhs.name == rhs.name &&
        lhs.model == rhs.model
    }
}
//Когда пишем свои типы данных мы не указываем их в множественном числе, как пример будет StarShips
var shipSet: Set<StarShip> = [StarShip(name: "Enterprice", model: "2"),StarShip(name: "Galaxy", model: "2")]
type(of: shipSet)


//А сейчас мы разберем как в множествах работать с индексами так же как и в массиве, говорят что так делать нельзя и они будут правы, но можно сделать так чтобы было можно

var set: Set = [1,2,3,4,5,6,7]
set.startIndex
set.endIndex
set[set.startIndex]
//Но правота будет на стороне тех людей которые говорят что с индексами в множестве работать нельзя, потому что в множестве индексы не упорядоченны и постоянно меняются местами и соотвественно из-за того с ними работать нельзя

//Простенькая задачка с массивом
var arr = [1,2,3,4,5,6,1,2,3,4,5,6,7,8] //И нам надо сделать так чтобы из этого массива пропали все повторяющиеся элементы и остались тольке которые уникальны
//Мы можем это сделать используя множество и не прибегать к алгоритмам
var set1: Set = Set<Int>()
for i in arr{
    set1.insert(i)
}
arr = set1.sorted() //И таким образом мы получаем массив состоящий только из уникальных значений 
