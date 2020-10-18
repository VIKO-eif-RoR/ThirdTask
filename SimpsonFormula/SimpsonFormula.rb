#SimpsonFormula Intergralo skaiciavimui

#Simpsono Formules skaiciavimo formule
class SimpsonsFormula
    #Metodas isvestines skaiciavimui
    def f(x)
        return x * Math.sin(x)
    end
#metodas intergralo skaiciavimui
    def SimpsonFormulaCalculator(startPoint, endPoint, interval)
        #Nustatomas aukstis
        heigh = (endPoint - startPoint) / interval
        sum = 0;
        #Sukuriamas Array
        array = Array.new(interval + 1)
        #Pradinis taskas talpinamas i array
        array[0] = startPoint
        j = 1
        #Array uzpildomas duomenimis
        while j <= interval
            array[j] = startPoint + heigh * j
            j = j + 1
        end
        i = 1
        #Intergralo skaiciavimas
        while i <= interval / 2
            sum = sum + f(array[2 * i - 2]) + 4 * f(array[2 * i - 1]) + f(array[2 * i])
            i = i + 1
        end
        return sum * heigh / 3
    end   
end