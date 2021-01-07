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
end

def mumble_letters(letters)
    return "" if letters == ""

    first_letter = letters[0].upcase
    if letters.length == 1 then
      return first_letter
    end

    second_part = letters[1].upcase + letters[1].downcase
    if letters.length == 2 then
        return first_letter + "-" + second_part
    end
    
    third_part = letters[2].upcase + letters[2].downcase * 2
    if letters.length == 3 then
        return first_letter + "-" + second_part + "-" + third_part
    end

    fourth_part = letters[3].upcase + letters[3].downcase * 3
    if letters.length == 4 then
        return first_letter + "-" + second_part + "-" + third_part + "-" + fourth_part
    end

    fifth_part = letters[4].upcase + letters[4].downcase * 4
    if letters.length == 5 then
        return first_letter + "-" + second_part + "-" + third_part + "-" + fourth_part + "-" + fifth_part
    end
end

