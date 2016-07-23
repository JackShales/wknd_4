# Below, we have two types of calculators. The simple one can perform basic arithmetic, 
# while the fancy one can also do square roots in addition to basic arithmetic.
# There is nothing wrong with the code below per se, but there is duplication
# between the two classes, since they each contain four identical methods.
# This is generally considered to be a code design flaw, since there may come
# a time where we decide to change how these methods work, and we may accidentally
# update the methods in one class, and forget to update them in the other, and our
# two classes become out of sync. This known as the DRY principle, that is:
# Don't Repeat Yourself.
# There are a number of techniques that we can use to fix this example. One is 
# a fundamental concept in OOP known as Inheritance. Your exercise is to research 
# Inheritance in Ruby, and use it to remove the duplication (or DRY up) the code 
# below. You must also write the driver code to test your classes.

class SimpleCalculator
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

class FancyCalculator < SimpleCalculator
  def square_root(number)
    Math.sqrt(number)
  end
end

# Write your own driver code below:

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
