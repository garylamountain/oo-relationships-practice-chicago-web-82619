require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

flatiron = Bakery.new("Flatiron Bakery")
yummy_time = Bakery.new("Yummy Time")

cake = Dessert.new("Chocolate Cake", flatiron)
cookies = Dessert.new("Cookies", yummy_time)

egg = Ingredient.new("Egg", 50, cake)
flour = Ingredient.new("Flour", 100, cake)
chocolate = Ingredient.new("Chocolate", 200, cake)

chips = Ingredient.new("Chips", 100, cookies)
peanuts = Ingredient.new("Peanuts", 50, cookies)

# chips.bakery

# puts chips.name == "Chips"

pf = Gym.new("Planet Fitness")
golds = Gym.new("Golds Gym")
arnold = Gym.new("Arnold Schwarzenegger's Basement")

biff = Trainer.new("Biff",pf)
baff = Trainer.new("Baff",pf)
buff = Trainer.new("Buff",pf)
swaleman = Trainer.new("Swaleman",golds)
sweleman = Trainer.new("Sweleman",golds)

client1 = Client.new("A",biff,pf)
client2 = Client.new("B",biff,pf)
client3 = Client.new("C",baff,pf)
client4 = Client.new("D",buff,pf)
client5 = Client.new("E",swaleman,golds)
client6 = Client.new("F",sweleman,golds)


binding.pry
0