var colors = ['blue', 'green', 'purple', 'pink']
var names = ['Bob', 'Frank', 'Sally', 'Kikki']

names.push("John")
colors.push("teal")

console.log(names)
console.log(colors)

var horses = {}
for (var i = 0; i < colors.length; i ++) {
  horses[names[i]] = colors[i]
}

console.log(horses)

function Car(make, model, price) {
  this.make = make;
  this.model = model;
  this.price = price;
  this.beep = function() { console.log("Beep!"); };
}

my_car = new Car("honda", "prelude", 2000)

console.log(my_car)
my_car.beep()

for (var key in my_car) {
  console.log("key " + key + "...." + "value " + my_car[key])
}

//to meet requirements- a literal object

var seasons = {
  summer: 'hot',
  fall: 'cool',
  winter: 'cold',
  spring: 'warm',
}

console.log(seasons)