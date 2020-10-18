class ShellSort
    def Rikiavimas(arrayNum, array)
        gap = arrayNum / 2
        #While mazina atstuma iki rikiuojamu elementu, kol atstumas nebus lygus 0
        while gap > 0
            i = gap
            #while skaito array nuo elemento kuris yra atstume gap iki paskutinio elemento
            while i < arrayNum
                #temp paima tam tikra reiksme is array
                temp = array[i]
                j = i
                #while cikle vyksta patikrinimas, ar reikia rikiuoti duomenys
                while j >= gap and array[j - gap] > temp
                    #Vyksta array elementu perstatymas
                    array[j] = array[j - gap]
                    j = j - gap
                end
                #Vyksta array elementu perstatymas
                array[j] = temp
                i = i + 1
            end
            gap = gap / 2

        end
        return array

    end
end