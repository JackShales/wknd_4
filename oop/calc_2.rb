# In the previous exercise, you were asked to DRY up your code (remove duplicated code)
# by using Inheritance. In this exercise, you must DRY up your code 
# a different technique using Composition. Hint: Google 'Ruby Mixin Module'. (Using
# mixin modules is how you achieve Composition with Ruby.)

module Calculator
  def add(first_number, second_number)
    first_number + second_number
  end

  def subtract(first_number, second_number)
    first_number - second_number
  end

  def multiply(first_number, second_number)
    first_number * second_number
  end

  def divide(first_number, second_number)
    first_number / second_number
  end
end

class SimpleCalculator
  include Calculator
end

class FancyCalculator
  include Calculator

  def square_root(number)
    Math.sqrt(number)
  end
end

# Copy your driver code from the previous exercise below:

smpl_calc = SimpleCalculator.new
fny_calc = FancyCalculator.new

# addition
puts "Answers:"
p add_answer_1 = smpl_calc.add(2,3)
p add_answer_2 = fny_calc.add(2,3)

if add_answer_1 == add_answer_2
  puts "Add test Pass!"
else
  puts "Add test Fail..."
end

# subtraction
puts "Answers:"
p sub_answer_1 = smpl_calc.subtract(3,2)
p sub_answer_2 = fny_calc.subtract(3,2)

if sub_answer_1 == sub_answer_2
  puts "Subtract test Pass!"
else
  puts "Subtract test Fail..."
end

# multiplication
puts "Answers:"
p mult_answer_1 = smpl_calc.multiply(3,2)
p mult_answer_2 = fny_calc.multiply(3,2)

if mult_answer_1 == mult_answer_2
  puts "Multiply test Pass!"
else
  puts "Multiply test Fail..."
end

# division
puts "Answers:"
p div_answer_1 = smpl_calc.divide(6,2)
p div_answer_2 = fny_calc.divide(6,2)

if div_answer_1 == div_answer_2
  puts "Divide test Pass!"
else
  puts "Divide test Fail..."
end

# square_root
puts "Answer:"
p sqrt_answer = fny_calc.square_root(9)

if sqrt_answer == 3
  puts "Square root test Pass!"
else
  puts "Square root test Fail..."
end
