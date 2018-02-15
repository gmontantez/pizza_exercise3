crust = ["plain","garlic","stuffed"]
meats = ["pepperoni","sausage","ham"]
veggies = ["mushrooms","black olives","green peppers"]
toppings = ["anchovies","chicken","spinach"]
sauces = ["tomato","alfredo"]
other_options = ["extra cheese","double pepperoni","feta cheese"]
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

def special_options(other_options)
   if other_options == "extra cheese"
      1.00
   elsif other_options == "double pepperoni"
      2.00
   elsif other_options == "feta cheese"
      3.00
   end
end


def delivery_choice(delivery)
   if delivery == "yes"
      3
   else 
      0
   end
end


puts "How many pizzas would you like?"
pizzas = gets.chomp.to_i

tax = 1.07

delivery_option = delivery.sample
delivery_cost = delivery_choice(delivery_option)

pizza = 1
subtotal = 0
while pizza <= pizzas do
   pizza_size = size.sample
   pizza_cost = cost(pizza_size)
   other = other_options.sample
   other_cost = special_options(other)
   puts "\nPizza #{pizza}"
   puts "So, you would like a #{pizza_size} pizza at $#{sprintf("%0.02f", pizza_cost)}."
	puts "You would like a #{crust.sample} crust, with #{sauces.sample} sauce, your toppings will be #{veggies.sample}, #{meats.sample} and #{toppings.sample}."  
	puts "You would also like #{other_options.sample} at $#{sprintf("%.02f", other_cost)}.\n"
   subtotal += pizza_cost + other_cost 
   total_cost = subtotal*tax
	pizza +=1
end

puts "\nThe total cost including tax is $#{total_cost}."
puts "\nYour choice for delivery is #{delivery_option}"
puts "\nThe delivery cost is $#{sprintf("%.02f", delivery_cost)}."

if delivery_option == "yes"
   puts "\nWhat would you like to tip?"
   tip = gets.chomp.to_i
else
   tip = 0
end
puts "\nThe tip amount is $#{tip}."