# frozen_string_literal: true

require_relative 'simpsonformula.rb'

n = 4
startingpoint = 2
endingpoint = 50
value = SimpsonsFormula.new.simpson_formula_calculator(startingpoint, endingpoint, n)
if startingpoint < endingpoint
  if n.even?
    puts(value)
  else
    puts('Enter lyginis intervalas')
  end
else
  puts('Start point must be greater than end point')
end
