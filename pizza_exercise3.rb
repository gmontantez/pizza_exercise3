crust = ["plain","garlic","stuffed"]
meats = ["pepperoni","sausage","ham"]
veggies = ["mushrooms","black_olives","green_peppers"]
toppings = ["anchovies","chicken","spinach"]
sauces = ["tomato","alfredo"]
other_options = ["extra_cheese","double_pepperoni"]
size = ["small","medium","large"]

def size(cost)
	if small pizza size(12.95) 
   		puts "The cost is $12.95 for a small pizza with 3 toppings."
   		puts "Okay, you would like #{pizzas} pizzas at $12.95 each."

   	elsif medium pizza size(15.95)
   		puts "The cost is $15.95 for a medium pizza with 3 toppings."
   		puts "Okay, you would like #{pizzas} pizzas at $15.95 each."

   	elsif large pizza size(18.95)
   		puts "The cost is $18.95 for a large pizza with 3 toppings."
   		puts "Okay, you would like #{pizzas} pizzas at $18.95 each."

end

puts "How many pizzas would you like?"
pizzas = gets.chomp.to_i

puts "What size pizza would you like?"
size = gets.chomp
puts "So, you would like a #{size} pizza at #{cost}."

puts "What type of crust and what would you like on your pizza?"


pizza = 1
while pizza <= pizzas do
	puts "You would like a #{crust.sample} crust, with #{sauces.sample} sauce, your toppings will be #{veggies.sample}, #{meats.sample} and #{toppings.sample}."  
	puts "You would also like #{other_options.sample}."
	pizza +=1
	end


total_cost = cost*pizzas

puts "The total cost is $#{total_cost}."