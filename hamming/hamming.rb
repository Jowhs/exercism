class Hamming
    def self.compute(str1, str2)
        
        dna1 = str1.split('') #chars method, the same as split
        dna2 = str2.split('')
        
        if dna1.length == dna2.length
            distance = 0
            i = 0
            while i < dna1.length
                if dna1[i] != dna2[i]  
                    distance += 1
                end
                i += 1
            end
            distance
        else
            raise ArgumentError 
        end 
    end
end

module BookKeeping
    VERSION = 3
end