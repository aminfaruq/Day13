/*
Your challenge is this: make a protocol that describes a building, adding various properties and methods, then create two structs, House and Office, that conform to it. Your protocol should require the following:

1. A property storing how many rooms it has.
2. A property storing the cost as an integer (e.g. 500,000 for a building costing $500,000.)
3. A property storing the name of the estate agent responsible for selling the building.
4. A method for printing the sales summary of the building, describing what it is along with its other properties.

*/
protocol Property {
  var propertyName: String { get }  
  var agentName: String { get }
  func roomTotal(total: Int)
  func costTotal(total: Int)
}


struct House : Property {
  var agentName = "Winda basudara"
  var propertyName = "Trin"
  
  func roomTotal(total: Int){
    print("Total room has \(total)")
  }

  func costTotal(total: Int){
    print("Total cost $\(total)")
  }
}

struct Office : Property {
  var agentName = "Pantek basudara"
  var propertyName = "Trinins"
  
  func roomTotal(total: Int){
    print("Total room has \(total)")
  }

  func costTotal(total: Int){
    print("Total cost $\(total)")
  }
}

func summary(using property: Property, room: Int, cost: Int ){
  print("Property name \(property.propertyName), agent name \(property.agentName)")
  property.roomTotal(total: room)
  property.costTotal(total: cost)
}
let house = House()
house.roomTotal(total: 2)
house.costTotal(total: 2000)
summary(using: house, room: 2 , cost: 2000)

let office = Office()
office.roomTotal(total: 2)
office.costTotal(total: 2000)
summary(using: office, room: 2 , cost: 2000)