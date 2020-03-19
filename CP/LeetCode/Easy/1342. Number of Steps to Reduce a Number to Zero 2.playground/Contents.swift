import UIKit

let wizards2 = ["Harry":"1", "Ron":"1", "Hermione":"0", "Draco":"2", "X":"3"]
let animals2 = ["Hedwig", "Scabbers", "Crookshanks"]

for (wizard, animal) in zip( wizards2, animals2) {
    print("\(wizard) has \(animal)")
}
