require_relative "SimpsonFormula.rb"


n = 4
startingPoint = 2
endingPoint = 55
value = SimpsonsFormula.new.SimpsonFormulaCalculator(startingPoint, endingPoint, n)
if startingPoint < endingPoint
    if n % 2 == 0
        puts(value)
    else
        puts("Enter lyginis intervalas")    
    end
else
    puts("Start point must be greater than end point")
end