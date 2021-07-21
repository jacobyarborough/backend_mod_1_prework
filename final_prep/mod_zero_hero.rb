# Challenge - See if you can follow the instructions and complete the exercise in under 30 minutes!

# Declare two variables - hero_name AND special_ability - set to strings
hero_name = 'Flash'
special_ability = "Super Speed"

# Declare two variables - greeting AND catchphrase
#   greeting should be assigned to a string that uses interpolation to include the hero_name
greeting = "No need to fear #{hero_name} is here!"
#   catchphrase should be assigned to a string that uses interpolation to include the special_ability
catchphrase = "No super villan can get away from my #{special_ability}!"
# Declare two variables - power AND energy - set to integers
power = 3
energy = 10
# Declare two variables - full_power AND full_energy
#   full_power should multiply your current power by 500
full_power = power * 500
#   full_energy should add 150 to your current energy
full_energy = energy + 150
# Declare two variables - is_human and identity_concealed - assigned to booleans
is_human = true
identity_concealed = false

# Declare two variables - arch_enemies AND sidekicks
#   arch_enemies should be an array of at least 3 different enemy strings
arch_enemies = ["Super Snail", "Joker", "Bugs Bunny"]
#   sidekicks should be an array of at least 3 different sidekick strings
sidekicks = ["Batman", "Wonder Woman", "Mr. Incredible"]
# Print the first sidekick to your terminal
puts sidekicks[0]
# Print the last arch_enemy to the terminal
puts arch_enemies[-1]
# Write some code to add a new arch_enemy to the arch_enemies array
arch_enemies.push('Scooby Doo')
# Print the arch_enemies array to terminal to ensure you added a new arch_enemey
p arch_enemies
# Remove the first sidekick from the sidekicks array
sidekicks.shift()
# Print the sidekicks array to terminal to ensure you added a new sidekick
p sidekicks
# Create a function called assess_situation that takes three arguments - danger_level, save_the_day, bad_excuse
#   - danger_level should be an integer
#   - save_the_day should be a string a hero would say once they save the day
#   - bad_excuse should be a string a hero would say if they are too afraid of the danger_level

# Your function should include an if/else statement that meets the following criteria
#   - Danger levels that are above 50 are too scary for your hero. Any danger level that is above 50 should result in printing the bad_excuse to the terminal
#   - Anything danger_level that is between 10 and 50 should result in printing the save_the_day string to the terminal
#   - If the danger_level is below 10, it means it is not worth your time and should result in printing the string "Meh. Hard pass." to the terminal.


def assess_situation(danger_level, save_the_day, bad_excuse)
  if danger_level < 50
    if (10..50).include? danger_level
      puts save_the_day
    else
      puts "Meh. Hard pass."
    end
  else
    puts bad_excuse
  end
end


#Test Cases
announcement = 'Never fear, the Courageous Curly Bracket is here!'
excuse = 'I think I forgot to lock up my 1992 Toyota Coralla. Be right back.'
assess_situation(99, announcement, excuse) #> Should print - 'I think I forgot to lock up my 1992 Toyota Coralla. Be right back.'
assess_situation(21, announcement, excuse) #> should print - 'Never fear, the Courageous Curly Bracket is here!'
assess_situation(3, announcement, excuse) #> should print - "Meh. Hard pass."

# Declare a new variable - scary_monster - assigned to an hash with the following key/values
#   - name (string)
#   - smell (string)
#   - weight (integer)
#   - citiesDestroyed (array)
#   - luckyNumbers (array)
#   - address (hash with following key/values: number , street , state, zip)
scary_moster = {
  name: "Cookie Monster",
  smell: "Cookies",
  weight: 40,
  citiesDestroyed: ["New York", "Denver", "Chicago"],
  luckyNumbers: [1,3,5],
  address: {number: 50, street: "Cookie st", state: "CO", zip: "80221"}
}


# Create a new class called SuperHero
# - Your class should have the following DYNAMIC values
#   - name
#   - super_power
#   - age
# - Your class should have the following STATIC values
#   - arch_nemesis, assigned to "The Syntax Error"
#   - power_level = 100
#   - energy_level = 50

# - Create the following class methods
#   - say_name, should print the hero's name to the terminal
#   - maximize_energy, should update the energy_level to 1000
#   - gain_power, should take an argument of a number and INCREASE the power_level by that number
class SuperHero
  attr_accessor :name, :superpower, :age, :arch_nemesis, :power_level, :energy_level

  def initialize(name, superpower, age)
    self.name = name
    self.superpower = superpower
    self.age = self
    self.arch_nemesis = "The Syntax Error"
    self.power_level = 100
    self.energy_level = 50
  end

  def say_name
    puts "#{self.name}"
  end

  def maximize_energy
    self.energy_level = 1000
  end

  def gain_power(power_increase)
    self.power_level += power_increase
  end

end
# - Create 2 instances of your SuperHero class
superhero_1 = SuperHero.new("Flash", "Super Speed", 27)
superhero_2 = SuperHero.new("Batman", "Money", 39)

# Reflection
# What parts were most difficult about this exerise?
# Writing logic for x between n and n-1 in the if statement
# Remebering the best practice syntax for writing classes

# What parts felt most comfortable to you?
# Creating the general structures of classes and methods

# What skills do you need to continue to practice before starting Mod 1?
# Practice creating classes with embedded methods that modify the data types in some way.
