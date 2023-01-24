require_relative '../lib/04_shakespeare'

describe "the shakespeare counter" do

    dictionnary = ["the", "of", "and", "to", "a", "in", "for", "is", "on", "that", "by", "this", "with", "i", "you", "it", "not", "or", "be", "are"]
    it "takes count the appearing frequence of every word in a dictionnary in the corpus and returns a hash" do
    expect(shakespeare_counter("below", dictionary)).to eq({"below"=>1, "low"=>1})
  end

end

