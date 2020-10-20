# frozen_string_literal: true

# SimpsonFormula Intergralo skaiciavimui

# Simpsono Formules skaiciavimo formule
class SimpsonsFormula
  # Metodas isvestines skaiciavimui
  def f(xvalue)
    xvalue * Math.sin(xvalue)
  end

  def array_fill(interval, startpoint, heigh, array)
    j = 1
    # Array uzpildomas duomenimis
    while j <= interval
      array[j] = startpoint + heigh * j
      j += 1
    end
  end

  def sum_skaiciavimas(interval, array, sum)
    i = 1
    # Intergralo skaiciavimas
    while i <= interval / 2
      sum = sum + f(array[2 * i - 2]) + 4 * f(array[2 * i - 1]) + f(array[2 * i])
      i += 1
    end
    sum
  end

  # metodas intergralo skaiciavimui
  def simpson_formula_calculator(startpoint, endpoint, interval)
    # Nustatomas aukstis
    heigh = (endpoint - startpoint) / interval
    sums = 0
    # Sukuriamas Array
    array = Array.new(interval + 1)
    # Pradinis taskas talpinamas i array
    array[0] = startpoint
    array_fill(interval, startpoint, heigh, array)
    sums = sum_skaiciavimas(interval, array, sums)
    sums * heigh / 3
  end
end
