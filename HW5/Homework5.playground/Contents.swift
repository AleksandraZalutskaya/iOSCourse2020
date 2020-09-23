import UIKit

//: ### Практика:
// 1. Придумать ENUM к которому можно применить rawValue (не Error), другой к которому можно применить Associated Values (не из примеров с занятия)
//RawValue
enum Currency: Int {
    case rub = 810
    case usd = 840
    case eur = 978
}
Currency (rawValue: 978)

//AssociatedValue

typealias Petrol = Double
typealias Energy = Double
typealias Gas = Double
typealias Diesel = Double

enum Cars {
    case PetrolCar (Petrol)
    case ElectricCar (Energy)
    case DieselCar (Diesel)
    case GasCar (Gas)
    case HybridCar (Petrol, Energy)
}

let wednesdayPetrolAmount = Cars.PetrolCar(30)
let wednesdayHybridAmount = Cars.HybridCar(35, 12)


// 2. Создать опционалы типов Int, Double, String + какого-то своего класса, а также применить все виды разворачивания: Optional Binding, Optional chaining, nil-coalesing (??)

//Optional Binding
//if let
let name: String?
name = "Mickey"

if let nameOfParticipant1 = name {
    print("\(nameOfParticipant1) has been regestred to the Marathon.")
}

//Guard
func distanceOfParticipant (distance: Int?) {
    guard let distance = distance else {
        print ("Participant hasn't passed the first stop.")
        return
    }
    print("Participant has just passed the point of \(distance) km.")
}

distanceOfParticipant(distance: 10)

//nil-coalesing
let finishLine1: Int? = 42
var firstParticipant = finishLine1 ?? 0

//Optional Chaining
struct MarathonResults {
    var name: String
    var distance: Double?
    var speed: Double?
}

var Participant1: MarathonResults?
Participant1 = MarathonResults (name: "Mickey", distance: 42, speed: 7.3)
let distance1 = Participant1?.distance

if let distance1 = distance1 {
    print ("Mickey has ran \(distance1) km at the Marathon.")
} else {
    print("PMickey hasn't appeared at the Marathon")
}

var Participant2: MarathonResults?
Participant2 = MarathonResults (name: "Nick", distance: nil, speed: nil)
let distance2 = Participant2?.distance

if let distance2 = distance2 {
    print ("Nick has ran \(distance2) km at the Marathon.")
} else {
    print("Nick hasn't appeared at the Marathon")
}

// 3. Описать с помощью ENUM погодные явления, сопроводить(где возможно) associated values

enum WeatherConditions {
    case temperature (celsius: Int)
    case wind
    case fallout (typeOfFallout: String)
    case cloudeness
}

func whatToWear (if weather: WeatherConditions) {
    switch weather {
    case .temperature(let celsius) where celsius <= 10:
        print("It's cold outside. Put on warm clothes.")
    case .fallout(let typeOfFallout) where typeOfFallout.lowercased() == "rainy":
        print("It's better to bring an umbrella and a scarf.")
    case .wind, .cloudeness:
        print("It's better to bring an umbrella and a scarf.")
    case .temperature, .fallout:
        print("It's sunny and warm outside. Put on a dress.")
    }
}
whatToWear(if: .temperature(celsius: 21))
whatToWear(if: .fallout(typeOfFallout: "Rainy"))
whatToWear(if: .fallout(typeOfFallout: "No fallout"))
