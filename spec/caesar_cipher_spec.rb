require_relative '../lib/01_caesar_cipher'

describe "the caesar_cipher method" do
    it "should encrypt string by shifting characters in a given amount" do
      expect(caesar_cipher("A", 2)).to eq("C")
      expect(caesar_cipher("Gobo", 5)).to eq("Ltgt")
      expect(caesar_cipher("prout", 4)).to eq("tvsyx")
    end

    it "should be no problem if the encrypted key end after z" do
        expect(caesar_cipher("Z", 2)).to eq("B")
        expect(caesar_cipher("Gobo", 25)).to eq("Fnan")
        expect(caesar_cipher("Boubeur", 26)).to eq("Boubeur")
    end
  
    it "should work even if the string has special characters or spaces" do
        expect(caesar_cipher("Hasta la vista, Baby!", 21)).to eq("Cvnov gv qdnov, Wvwt!")
    end

    it "should work with super high keys" do
        expect(caesar_cipher("Hasta la vista, Baby!", 121)).to eq("Yrjkr cr mzjkr, Srsp!")
    end

    it "should work if it has numbers" do
        expect(caesar_cipher("3 petites truites crues", 6)).to eq("3 vkzozky zxaozky ixaky")
    end
end