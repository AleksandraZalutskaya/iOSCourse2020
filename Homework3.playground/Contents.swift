import Foundation

class Animals {
    var generalProperty1 = "многоклеточные организмы"
    var generalProperty2 = "имеют нервную систему"
    var generalProperty3 = "умеют добывать пищу"
    
    var description: String {
        return "Животные обладают общими призниками: \(generalProperty1), \(generalProperty2) и \(generalProperty3).\n"
    }
}
let animals = Animals()
print(animals.description)

class Mammals: Animals {
    var genreralProperty4 = "позвоночные животные"
    
    override var description: String {
        return super.description + "Животные делятся на классы, один из которых, млекопитающие. Основное отличие от других классов состоит в том, что это \(genreralProperty4).\n"
    }
    func makeMoves() {
    }
    func eat () {
    }
    func sleep () {
    }
    func breath (){
    }
    func makeNoises () {
    }
}
let mammals = Mammals()
print(mammals.description)

class Primates: Mammals {
    static var numberOfSpecies = 477 //его нельзя добавлять в description через \()
    var wool = "имеют шерсть"
    var theyLive = "обитают на деревьях"
    
    override var description: String {
        return super.description + "В основном приматы \(wool) и \(theyLive).\n"
    }
    
    override func makeMoves() {
        "передвигаются при помощи рук и ног"
    }
    override func makeNoises() {
        "у-у-а"
    }
    override func eat() {
        "расжевывают еду зубами"
    }
    func hang(tail: String) -> String {
        "могут висеть на своем хвосте"
    }
}

let primates = Primates()
print(primates.description)

class Lemurs: Primates {
    var size = "от 30г до 10кг"
    var home = "Мадагаскар и Коморские острова"
    var lifecycle = "20 - 27 лет"
    
    override var description: String {
        return super.description + "Сейчас давайте рассмотрим такой вид приматов как Лемуры. Родиной этих животных является \(home). Лемуры живут \(lifecycle) и в зависимости от подвида их размер может колебаться \(size).\n"
    }
    override func sleep() {
        "впадают в спячку"
    }
    override func makeNoises() {
        "могут петь"
    }
}

let lemurs = Lemurs()
print(lemurs.description)

class Gibbons: Primates {
    static var weigtMax: Int = 15 //так мы храним данные, которые можем потом через if чекнуть верно или нет, и если верно, то тогда инициализирует его
    
    var size = "от 4кг до 13кг"
    var home = "тропические леса Юго-Восточной Азии"
    var lifecycle = "25 - 30 лет"
    
    override var description: String {
        return super.description + "Сейчас давайте рассмотрим такой вид приматов как Гиббоны. Родиной этих животных является \(home). Гиббоны живут \(lifecycle) и в зависимости от подвида их размер может колебаться \(size).\n"
    }
    override func hang(tail: String) -> String {
        "не может висеть, нет хвоста"
    } //функцию внутри класса удалить нельзя, только переопределить
}

let gibbons = Gibbons()
print(gibbons.description)
