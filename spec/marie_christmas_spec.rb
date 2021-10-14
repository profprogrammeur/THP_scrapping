
require_relative '../lib/mairie_christmas'

describe "Cities_url function list should be an array" do
  it "should return an array" do
    expect(cities_url_95.class).to eq(Array)
  end
end
describe "The city_email list should be an array " do
  it "should return an Array" do
    expect(get_city_email.class).to eq(Array)
  end
end
