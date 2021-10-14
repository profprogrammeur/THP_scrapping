 
require_relative '../lib/dark_trader'

describe "An array should be returned" do
    it "should return an array" do
        expect(create_crypto_hash.class).to eq(Array)
    end
  end

describe "return first element of symbol_list" do
    it "should return BTC" do
        expect(create_crypto_hash[0].keys).to eq(["BTC"])
    end
end

