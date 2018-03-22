class Complement
    
    def self.of_dna(str)
        if str.match(/\d\s[^CGTA]+/) 
            raise ArgumentError
        else
            str.tr('GCTA', 'CGAU')
        end
    end

    def self.of_rna(str)
        if str.match(/\d\s[^CGAU]+/)
            raise ArgumentError
        else
            str.tr('CGAU', 'GCTA')
        end
    end
end

module BookKeeping
    VERSION = 4
end