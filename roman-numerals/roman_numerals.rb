class Integer
    def roman_conversion
        {
            1000 => "M",    
            900 => "CM",
            500 => "D",
            400 => "CD",
            100 => "C",
            90 => "XC",
            50 => "L",
            40 => "XL",
            10 => "X",
            9 => "IX",
            5 => "V",
            4 => "IV",
            1 => "I"
        }
    end

    def to_roman
       romans = ""
       num = self
       roman_conversion.keys.each do |div|
           quotient, modulus = num.divmod(div)
           romans << roman_conversion[div] * quotient
           num = modulus
       end
       romans
    end
end

module BookKeeping
    VERSION = 2
end