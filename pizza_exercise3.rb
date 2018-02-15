crust = ["plain","garlic","stuffed"]
meats = ["pepperoni","sausage","ham"]
veggies = ["mushrooms","black olives","green peppers"]
toppings = ["anchovies","chicken","spinach"]
sauces = ["tomato","alfredo"]
other_options = ["extra cheese","double pepperoni"]
size = ["small","medium","large"]
delivery = ["yes","no"]

def cost(size)
	if size == "small"
      13.00
	elsif size == "medium"
      16.00
   elsif size == "large"
      19.00
   end
end

def delivery_choice(delivery)
   if delivery == "yes"
      3.00
   else 
      0
   end
end


puts "How many pizzas would you like?"
pizzas = gets.chomp.to_i

delivery_option = delivery.sample
delivery_cost = delivery_choice(delivery_option)

pizza = 1
total_cost = 0
while pizza <= pizzas do
   pizza_size = size.sample
   pizza_cost = cost(pizza_size)
   puts "\nPizza #{pizza}"
   puts "So, you would like a #{pizza_size} pizza at $#{pizza_cost}."
	puts "You would like a #{crust.sample} crust, with #{sauces.sample} sauce, your toppings will be #{veggies.sample}, #{meats.sample} and #{toppings.sample}."  
	puts "You would also like #{other_options.sample}.\n"
   total_cost += pizza_cost
	pizza +=1
end

puts "\nThe total cost is $#{total_cost}."
puts "\nYour choice for delivery is #{delivery_option}"
puts "\nThe delivery cost is $#{delivery_cost}."
if delivery_option == "yes"
   puts "\nWhat would you like to tip?"
   tip = gets.chomp.to_i
else
   tip = 0
end
puts "\nThe tip cost is $#{tip}."