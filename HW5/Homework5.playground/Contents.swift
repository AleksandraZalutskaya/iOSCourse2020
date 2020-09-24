import UIKit

//: ### Практика:
// 1. Придумать ENUM к которому можно применить rawValue (не Error), другой к которому можно применить Associated Values (не из примеров с занятия)
//RAW VALUE
enum Currency: Int {
    case rub = 810
    case usd = 840
    case eur = 978
}
Currency (rawValue: 978)

//ASSOCIATED VALUE

typealias Petrol = Double
typealias Diesel = Double
typealias Propan = Int
typealias Electricity = Int

enum Cars {
    case petrolCar (Petrol)
    case dieselCar (Diesel)
    case gasCar (Propan)
    case electricCar (Electricity)
    case hybridCar (Petrol, Electricity)
}

let wednesdayPetrol = Cars.petrolCar(30.8)
let wednesdayDiesel = Cars.dieselCar(13.2)
let wednesdayElectric = Cars.electricCar(24)
let wednesdayGas = Cars.gasCar(0)
let wednesdayHybrid = Cars.hybridCar(11.8, 2)

func currentVolume (cars: Cars) {
    switch cars {
    case .petrolCar(let liter1):
        print ("petrol car has \(liter1) liters now.")
    case .dieselCar(let liter2):
        print("diesel car has \(liter2) liters now.")
    case .gasCar (let liter3):
        print("Gas car has \(liter3) liters now.")
    case .electricCar(let WattPerHour):
        print("Electric car has \(WattPerHour) W/H now.")
    case let .hybridCar(hLiter, hWattPerHour):
        print("Hybrid Car has \(hLiter) liters and \(hWattPerHour) W/H now.")
    }
}

currentVolume(cars: wednesdayHybrid)
currentVolume(cars: wednesdayGas)

// 2. Создать опционалы типов Int, Double, String + какого-то своего класса, а также применить все виды разворачивания: Optional Binding, Optional chaining, nil-coalesing (??)

let sister: Int? = Optional.some(2)
let brother: Int? = Optional.none

//Optional Binding
//Guard
func participant1 (name: String?){
    guard let name = name else {
        print("Have not appeared.")
        return
    }
    print("Participant \(name) is registered.")
}
participant1(name: "Mickey")

//If let
let firstStop: Double? = 5.5
    if let distance = firstStop {
        print("Mickey has just passed the first point of \(distance) km.")
    }

//Nil-Coalesing

let secondStop: Int? = 10
let participant1 = secondStop ?? 5

//Optional Chaining
typealias kilometersPerMinute = Double
struct Marathon {
    var name: String
    var distance: Double?
    var speed: kilometersPerMinute?
}
let runner1 = "Mickey"
let runner2 = "Nick"

let firstParticipant: Marathon?
firstParticipant = Marathon(name: "Mickey", distance: 42, speed: 7.1)
let distanceOfMickey = firstParticipant?.distance

if distanceOfMickey == 42 {
    print("\(runner1) has finished the Marathon.")
} else {
    print("\(runner1) hasn't appeared at the Marathon.")
}

let secondParticipant: Marathon?
secondParticipant = Marathon(name: "Nick", distance: nil, speed: nil)

let distanceOfNick = secondParticipant?.distance

if distanceOfNick == 42 {
    print("\(runner2) has finished the Marathon.")
} else {
    print("\(runner2) hasn't appeared at the Marathon.")
}

// 3. Описать с помощью ENUM погодные явления, сопроводить(где возможно) associated values

enum WeatherConditions {
    case temperature (celcius: Double)
    case cloudiness
    case fallout (typeOfFallout: String)
    case wind
}

func whatToWear (if goForWalk: WeatherConditions) {
    switch goForWalk {
    case .temperature(let celcius) where celcius <= 10:
        print("It's cold outside. Put on warm clothes.")
    case .cloudiness:
        print("You'd better bring an umbrella and wear a scarf.")
    case .fallout(let typeOfFallout) where typeOfFallout.lowercased() == "rainy" || typeOfFallout.lowercased() == "storm":
        print("You'd better bring an umbrella and wear a scarf.")
    case .wind:
        print("It's windy outside. Put on warm clothes.")
    case .temperature, .fallout:
        print("It's sunny and warm outside. Put on a dress.")
    }
}

whatToWear(if: .temperature(celcius: 17.5))
whatToWear(if: .cloudiness)
whatToWear(if: .fallout(typeOfFallout: "Rainy"))
