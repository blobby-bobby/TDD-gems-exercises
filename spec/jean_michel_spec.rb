require_relative '../lib/01_caesar_cipher'

describe "day_trader method" do
    it "should return best day to buy, and best day to sell" do
      expect(day_trader([17, 3, 6, 9, 15, 8, 6, 1, 10])).to eq([1, 4])
    end
end