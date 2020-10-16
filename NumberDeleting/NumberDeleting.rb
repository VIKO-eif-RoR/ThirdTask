class Functions
    #Finding max value in array
    def Maximum(arr)
        m = arr.max
        return m
    end
    #Finding min value in array
    def Minimum(arr)
        m = arr.min
        return m
    end
    #Deleting max and min values from array
    def Deleting(arr, m1, m2)
        arr.delete(m1)
        arr.delete(m2)
        return arr
    end
end