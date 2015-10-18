puts "Hello! Welcome to our mini calculator."

class Calculator
  def initialize()
  end

  def add(a, b)
    @a = a
    @b = b
    sum = a + b
    puts "The sum of #{a} and #{b} is #{sum}"
  end

  def subtract(a, b)
    @a = a
    @b = b
    difference = a - b
    puts "The difference when you subtract #{b} from #{a} is #{difference}"
  end

  def multiply(a, b)
    @a = a
    @b = b
    product = a * b
    puts "The product of multiplying #{a} and #{b} is #{product}"
  end

  def divide(a, b)
    @a = a
    @b = b
    quotient = a / b
    puts "The quotient of #{a} divided by #{b} is #{quotient}"
  end

  def user_calculator_prompts()
    puts "Please provide a number:"
    a = gets.chomp.to_i
    puts "Pick one of the following: + , - , * or / "
    user_choice = gets.chomp
    until ((user_choice == "+") || (user_choice == "-") || (user_choice == "*") || (user_choice == "/"))
      puts "Error! Please pick one of the four: +, -, * or /"
      user_choice = gets.chomp
    end
    puts "Please provide another number:"
    b = gets.chomp.to_i

    user_calculator= Calculator.new() 

    if user_choice == "+"
      user_calculator.add(a, b)
    elsif user_choice == "-"
      user_calculator.subtract(a, b)
    elsif user_choice == "*"
      user_calculator.multiply(a, b)
    else user_choice == "/"
      user_calculator.divide(a,b)
    end
  end
end


puts "Please tell us if you want to calculate or stop"
user_input = gets.chomp.downcase

while ((user_input != "calculate") && (user_input != "stop"))
  puts "Please enter the word calculate or stop"
  user_input = gets.chomp.downcase
  if user_input == "stop"
    puts "Thank you for your calculations! Hope you had fun!"
  end
end
until user_input == "stop"
  calculation = Calculator.new()
  calculation.user_calculator_prompts()
  puts "Please tell us if you want to calculate or stop"
  user_input = gets.chomp.downcase
  while ((user_input != "calculate") && (user_input != "stop"))
    puts "Please enter the word calculate or stop"
    user_input = gets.chomp.downcase
  end
  if user_input == "stop"
    puts "Thank you for your calculations! Hope you had fun!"
  end
end