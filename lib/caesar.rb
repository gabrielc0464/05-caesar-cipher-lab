$array_abc_lower = [*?a..?z]
$array_abc_high = [*?A..?Z]

def caesar_encode(string, offset)
    string.split("").map do |character|
        if $array_abc_lower.include?(character)
            new_character =$array_abc_lower[($array_abc_lower.index(character)+offset)%26]
        elsif 
        $array_abc_high.include?(character)
            new_character =$array_abc_high[($array_abc_high.index(character)+offset)%26]
        else character
        end
    end.join("")
end

def caesar_decode(string, offset)
    string.split("").map do |character|
        if $array_abc_lower.include?(character)
            new_character =$array_abc_lower[($array_abc_lower.index(character)-offset)%26]
        elsif 
        $array_abc_high.include?(character)
            new_character =$array_abc_high[($array_abc_high.index(character)-offset)%26]
        else character
        end
    end.join("")
end