require_relative "ShellSort2.rb"

arrayNum = 10
array = Array.new(arrayNum) {rand(1...10) }

values = ShellSort.new
array = values.Rikiavimas(arrayNum, array)
puts(array)