# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/0-classes.rb

fav_food = "Biriyani"
fav_food2 = "Ramen"
puts fav_food.upcase
puts fav_food2.upcase

no_of_food = 5
puts no_of_food.class

# String Class
class Dog
    def speak
        puts "Woof"
    end
end

rusty = Dog.new 
rusty.speak
rusty.sit

# String Methods