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

    def make_part(number, letters)
        "-" + letters[number-1].upcase + letters[number-1].downcase * (number - 1)
    end

    return "" if letters == ""

    string_length = letters.length
    mumbled_string = letters[0].upcase

    if string_length >= 2 then
        mumbled_string += make_part(2, letters)
    end
    
    if string_length >= 3 then
        mumbled_string += make_part(3, letters)
    end
   
    if string_length >= 4 then
        mumbled_string += make_part(4, letters)
    end
   
    if string_length >= 5 then
        mumbled_string += make_part(5, letters)
    end

    if string_length >= 6 then
        mumbled_string += make_part(6, letters)
    end

    return mumbled_string
end





