# In this example, we have THREE calculators, the two included in the previous
# exercises as well as Whiz Bang Calculator that can even calculate the hypotenuse
# of a triangle if given the length of the other two sides. Figure out how to 
# DRY up all the code below - there shouldn't be a single method duplicated between
# any two classes.

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

class WhizBangCalculator < FancyCalculator
  def hypotenuse(first_number, second_number)
    Math.hypot(first_number, second_number)
  end
  
  def exponent(first_number, exponent_number)
    total = 1
    exponent_number.times { total = multiply(total,first_number) }
    total
  end
end

# Copy your driver code from the previous exercise and more below:

smpl_calc = SimpleCalculator.new
fny_calc = FancyCalculator.new
whiz_calc = WhizBangCalculator.new

# addition
puts "Answers:"
p add_answer_1 = smpl_calc.add(2,3)
p add_answer_2 = fny_calc.add(2,3)
p add_answer_3 = whiz_calc.add(2,3)

if add_answer_1 == add_answer_2 && add_answer_1 == add_answer_3
  puts "Add test Pass!"
else
  puts "Add test Fail..."
end

# subtraction
puts "Answers:"
p sub_answer_1 = smpl_calc.subtract(3,2)
p sub_answer_2 = fny_calc.subtract(3,2)
p sub_answer_3 = whiz_calc.subtract(3,2)

if sub_answer_1 == sub_answer_2 && sub_answer_1 == sub_answer_3
  puts "Subtract test Pass!"
else
  puts "Subtract test Fail..."
end

# multiplication
puts "Answers:"
p mult_answer_1 = smpl_calc.multiply(3,2)
p mult_answer_2 = fny_calc.multiply(3,2)
p mult_answer_3 = whiz_calc.multiply(3,2)

if mult_answer_1 == mult_answer_2 && mult_answer_1 == mult_answer_3
  puts "Multiply test Pass!"
else
  puts "Multiply test Fail..."
end

# division
puts "Answers:"
p div_answer_1 = smpl_calc.divide(6,2)
p div_answer_2 = fny_calc.divide(6,2)
p div_answer_3 = whiz_calc.divide(6,2)

if div_answer_1 == div_answer_2 && div_answer_1 == div_answer_3
  puts "Divide test Pass!"
else
  puts "Divide test Fail..."
end

# square_root
puts "Answers:"
p sqrt_answer_1 = fny_calc.square_root(9)
p sqrt_answer_2 = whiz_calc.square_root(9) 

if sqrt_answer_1 == sqrt_answer_2
  puts "Square root test Pass!"
else
  puts "Square root test Fail..."
end

# hypotenuse
puts "Answer:"

p hypot = whiz_calc.hypotenuse(3,4)

if hypot == 5
  puts "Hypotenuse test Pass!"
else
  puts "Hypotenuse test Fail..."
end

# exponent
puts "Answer:"

p expo = whiz_calc.exponent(3,2)

if expo == 9
  puts "Exponent test Pass!"
else 
  puts "Exponent test Fail!"
end

