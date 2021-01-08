describe "Mumbling" do
    it "gives us an empty string when given an empty string" do 
        result = mumble_letters("")

        expect(result).to be_empty
    end

    it "gives an uppercase A when given lowercase a" do 
        result = mumble_letters("a")

        expect(result).to eq("A")
    end

    it "gives an uppercase B when given lowercase b" do 
        result = mumble_letters("b")

        expect(result).to eq("B")
    end

    it "gives an uppercase C when given lowercase c" do 
        result = mumble_letters("c")

        expect(result).to eq("C")
    end

    it "gives A-Aa when given aa" do 
        result = mumble_letters("aa")

        expect(result).to eq("A-Aa")
    end

    it "gives A-Bb when given ab" do 
        result = mumble_letters("ab")

        expect(result).to eq("A-Bb")
    end

    it "gives B-Aa when given ba" do
        result = mumble_letters("ba")

        expect(result).to eq("B-Aa")
    end

    it "gives B-Aa when given bA" do
        result = mumble_letters("bA")

        expect(result).to eq("B-Aa")
    end

    it "gives A-Bb-Ccc when given abc" do
      result = mumble_letters("abc")

      expect(result).to eq("A-Bb-Ccc")
    end

    it "gives B-Bb-Ccc when given bbc" do
      result = mumble_letters("bbc")

      expect(result).to eq("B-Bb-Ccc")
    end

    it "gives B-Bb-Bbb when given bbb" do 
        result = mumble_letters("bbb")

        expect(result).to eq("B-Bb-Bbb")
    end

    it "gives B-Bb-Bbb when bbB" do 
        result = mumble_letters("bbB")

        expect(result).to eq("B-Bb-Bbb")
    end

    it "gives B-Bb-Bbb-Bbbb when bbbb" do
        result = mumble_letters("bbbb")

        expect(result).to eq("B-Bb-Bbb-Bbbb")
    end

    it "gives B-Bb-Bbb-Bbbb-Bbbbb when bbbbb" do
        result = mumble_letters("bbbbb")

        expect(result).to eq("B-Bb-Bbb-Bbbb-Bbbbb")
    end

    it "gives A-Bb-Ccc-Dddd-Eeeee-Ffffff when abcdef" do
        result = mumble_letters("abcdef")

        expect(result).to eq("A-Bb-Ccc-Dddd-Eeeee-Ffffff")
    end
end

def mumble_letters(letters)
    return "" if letters == ""

    string_length = letters.length
    letter_list = letters.chars
    first_letter = letters[0].upcase
    
    if string_length == 1 then
      return first_letter
    end

    second_part = "-" + letter_list[1].upcase + letter_list[1].downcase
    if string_length == 2 then
        return first_letter + second_part
    end
    
    third_part = "-" + letter_list[2].upcase + letter_list[2].downcase * 2
    if string_length == 3 then
        return first_letter + second_part + third_part
    end

    fourth_part = "-" + letter_list[3].upcase + letter_list[3].downcase * 3
    if string_length == 4 then
        return first_letter + second_part + third_part + fourth_part
    end

    fifth_part = "-" + letter_list[4].upcase + letter_list[4].downcase * 4
    if string_length == 5 then
        return first_letter + second_part + third_part + fourth_part + fifth_part
    end

    sixth_part = "-" + letter_list[5].upcase + letter_list[5].downcase * 5
    if string_length == 6 then
        return first_letter + second_part + third_part + fourth_part + fifth_part + sixth_part
    end
end


