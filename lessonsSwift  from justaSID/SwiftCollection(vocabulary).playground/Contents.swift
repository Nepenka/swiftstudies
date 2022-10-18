import UIKit
/*
//Сегодня мы научимся работать со словарями,  и поймем в чем их преимущество
var dict1 = Dictionary<String,String>() //с помощью круглых скобок вызываем инициализатор
var dict2 = [Int: String]() //чаще всего будет использоваться вот такой способ объявления
//теперь с анотации типа
var dict3: Dictionary<Int,String> = [:] //поставив двоеточие в собках мы объявили словарь
//щас скоращенная форма объявления
var dict4: [Int: String] = [:]

var dict5 = Dictionary<String, String>(dictionaryLiteral: ("key", "Some string"),("another key", "another string")) //внутри словаря значения могут повторяться, а ключи не могут
dict5
var dict6: [Int: String] = [1: "Book", 2: "Book2"]
var dict7 = [1:1, 2:2, 3:3]
type(of: dict7)
//Ключами словаря могут быть только те значения которые удовлетворяют протокол хэшебл

var dict8 = Dictionary<Int, String>()
dict8.count
dict5.isEmpty
dict8 [1]
dict8[1] = "Lumen"
dict8[1]
dict8[3] = "Elisium"
dict8.count
dict8.isEmpty
dict8[2] = "Rammsetain"
//Щас познакомимя с ещё одним способо добавить значение в словарь
dict8.updateValue("Eminem", forKey: 4)
//Так же с помощью этого метода мы можем обновить какое-то значение
dict8.updateValue("NoizeMC", forKey: 3)
dict8[3]
//ещё один способо обновления
dict8[4] = "Nightwish"
dict8[4]
//Теперь разберёмся как можно удалить значения из словаря
//dict8[1] = nil
dict8[1]
//так же есть метод removeValue
//var group = dict8.removeValue(forKey: 2)
dict8[2]
//print(group)
//так же конечно же с помощью метода removeAll можно удалить вообще всё что есть у нас в словаре
//dict8.removeAll()
//dict8.popFirst()//удаляет значение вместе с ключом, но только это нам возвращает
//var dict9 = dict8.popFirst() //теперь оно хранит значение которое было удаленно из нашего словаря
//dict 9
dict8.randomElement()
dict8.contains { key, value in
    return key == 1 && value == "Lumen" //мы вызвали метод contains и он нам вернёт true в том случае если key будет равно 1 и value будет равно Lumen
}

//С методами мы закончили теперь поговорим о том как проётерировать словарь это делается с помощью цикла
for (key,value) in dict8 {
 print("In key: \(key), lay value: \(value)")
}

//Отдельно мы можем пройтись по ключам
for key in dict8.keys{
    print(key)
}
//Так же можно пройтись по всем значениям
for value in dict8.values.sorted(){ //они возвращают не массив а специальный тип если мы хотим поработать с массивои то нам надо вызвать метод sorted который возвращает массив, так ещё отсортированный
    print(value)
}
*/

//Материал для продвинутых


//Мы можем объявить словарь у которого, например, будет значение Int а ключом будет другой словарь
var person: [Int: [String:String] ] = [1:["Targarian": "Jhon", "Barateon": "Jofry"], 2: ["Night": "NightKing", "nightKnights": "Knight"]]
person[1]!["Targarian"] //cтавим восклицательный знак потому что это поциональный тип числа и если мы его не поставим то получим ошибку force-unwrap
var dict = Dictionary<Int,String>()
dict[1] = "bmw"
dict[2] = "audi"
dict[4] = "volvo"
//Самое интересное что мы здесь обращаемся по индексам но мы можем получить здесь информацию про какие-нибудь индексы, ну и в конечном счёте его использовать
let index = dict.startIndex
dict[index] //и он нам вернёт значения, но в этом нет смысла потому что элементы в словаре не упорядочены
var dict2 = dict.filter { (key, value ) in
    return key < 2
}
//Теперь у нас в словаре лежит токо одно значение
dict2.count
    
dict.map { (key,value) -> Dictionary<Int, String> in
    return [key + 1: value ] //в данном случае мы хотим чтобы все наши ключи увеличились на еденицу
}
//Допустим нам дали задачу разделить наш словарь на два массива на ключи и значений
/*
let (keys,values) = dict.reduce(into: (into: ([],[])) { (tuple, arg1) in
    let (key,value) = arg1
    tuple.0.append(key)
    tuple.1.append(value)
    
}
keys
values
 код не работает!!!!!
*/
//Cейчас попробуем написать свой собсттвенный метод для dictionary этот метод будет сливать двва словаря и получать из них какой-то третий
extension Dictionary{
    
    func merge(dict:Dictionary<Key,Value>) -> Dictionary<Key, Value> {
        var mutableCopy = self //Он будет привязан к нашему начальному словарю
        for (key,value) in dict{
            if mutableCopy[key] != nil {
                continue
            }
        }
        return mutableCopy
    }
}


var dict22 = Dictionary<Int,String>()
dict22[1] = "bmw"
dict22[2] = "audi"
dict22[4] = "volvo"

var dict1 = [2: "mazda", 4: "Nissan", 5: "ВАЗ"]
var dict3 = dict22.merge(dict: dict1)
